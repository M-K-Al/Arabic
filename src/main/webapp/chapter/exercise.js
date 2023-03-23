let streakCounter = 0, levelTemp;
const streakLevels = ["#bcbcbc", "#44ff44", "#55dd55", "#cc44cc", "#b40000"]
const streakCount = $("#streak-count").css("background-color", streakLevels[0]);
// noinspection JSUnresolvedVariable,JSUnusedGlobalSymbols
const chart = Highcharts.chart('chart-container', {
    tooltip: {
        hideDelay: 50,
        outside: true,
        shape: "square",
        positioner: function (labelWidth, labelHeight, point) {
            return {
                x: point.plotX - 0.5 * point.h - 0.5 * labelWidth + 10,
                y: point.plotY - 0.5 * this.chart.hoverPoint.shapeArgs.width - labelHeight,
            };
        },
        formatter: function () {
            const plural = this.y > 1 ? "s" : "";
            switch (this.point.id) {
                case 0:
                    return 'You identified <b>' + this.x + '</b> correctly <b>' + this.y + '</b> time' + plural;
                case 1:
                    return 'You identified <b>' + this.x + '</b> wrongly <b>' + this.y + '</b> time' + plural;
                case 2:
                    return 'You confused <b>' + this.x + '</b> with another letter <b>' + this.y + '</b> time' + plural;
            }
        }
    },
    credits: {
        enabled: false
    },
    chart: {
        type: 'bar',
        style: {
            fontFamily: 'Segoe UI'
        },
    },
    title: {
        text: undefined,
    },
    xAxis: {
        min: 0,
        // max: 28,
        categories: [],
        tickInterval: 1,
        lineColor: 'transparent',
        opposite: true,
        title: {
            enabled: false
        },
        labels: {
            step: 1,
            style: {
                fontWeight: 'bold',
                fontSize: '16px'
            },
        },
    },
    yAxis: {
        visible: false,
    },
    legend: {
        enabled: false
    },
    exporting: {
        buttons: false,
    },
    plotOptions: {
        series: {

            groupPadding: 0,
            pointPadding: 0,
            pointWidth: 16,
            stacking: 'percent',
            dataLabels: {
                enabled: false
            },
        },
        bar: {
            series: {
                groupPadding: 0,
                pointPadding: 0
            },
        }
    },
    series: [{
        data: []
    }]
});

const cardClassList = "one-click-card relative m-1.5 flex h-28 w-28 transform cursor-pointer items-center justify-center rounded-lg bg-gray-200 font-serif text-6xl shadow-lg ring-1 ring-gray-900/5 transition-all duration-200 focus-within:bg-slate-100 hover:m-0 hover:h-36 hover:w-36 hover:text-7xl hover:shadow-2xl";

let currentIndex = -1;

const updateList = [];

function shuffleArray(array) {
    for (let i = array.length - 1; i > 0; i--) {
        const j = Math.floor(Math.random() * (i + 1));
        [array[i], array[j]] = [array[j], array[i]];
    }
}

function getRandomItem(map) {
    let index = currentIndex;
    while (currentIndex === index) index = Math.floor(Math.random() * map.length);
    currentIndex = index;
    return map[index];
}

function cardInit() {
    document.activeElement.blur();
    for (const element of updateList) element.update({y: element.y + 1});
    updateList.length = 0;
    const randomValue = getRandomItem(exercises);
    const answer = randomValue[1][0];
    const array = randomValue[1].slice(0);
    shuffleArray(array);
    $(".card-container").removeAttr("expired").removeData("removed").attr("answer", answer).children().each(function () {
        const letter = array.pop();
        $(this).show().attr("class", cardClassList).attr("letter", letter).text(letter);
    })
}

$(".one-click-card").keyup(function (event) {
    if (event.code !== "Enter") return;
    $(this).trigger("click");
    event.preventDefault();
}).on("click", function () {
    const parent = $(this).closest(".card-container").addClass("pointer-events-none");
    const letter = $(this).attr("letter");
    const answer = parent.attr("answer");

    let letterIndex = chart.xAxis[0].categories.findIndex(value => value === letter);
    if (letterIndex === -1) {
        letterIndex = chart.xAxis[0].categories.push(letter) - 1;
        $("#chart-container").css("height", "+=16");
        chart.reflow();
    }

    if (letter === answer) {
        if (parent.attr("expired") !== "") {
            streakCount.text(++streakCounter).css("background-color", streakLevels[(levelTemp = streakCounter / 10) < streakLevels.length ? levelTemp : streakLevels.length - 1]);

            const val = chart.series[0].data.find(value => value?.x === letterIndex && value.id === 0);
            if (val) val.update({y: val.y + 1});
            else chart.series[0].addPoint({x: letterIndex, y: 1, color: "#23CC88", id: 0});
        }
    } else {
        streakCount.text(streakCounter = 0).css("background-color", streakLevels[0]);

        const val = chart.series[0].data.find(value => value?.x === letterIndex && value.id === 2);
        if (val) val.update({y: val.y + 1});
        else chart.series[0].addPoint({x: letterIndex, y: 1, color: "#FFBF40", id: 2});

        let answerIndex = chart.xAxis[0].categories.findIndex(value => value === answer);
        if (answerIndex === -1) {
            answerIndex = chart.xAxis[0].categories.push(answer) - 1;
            $("#chart-container").css("height", "+=16");
            chart.reflow();
        }

        const answerVal = chart.series[0].data.find(value => value?.x === answerIndex && value.id === 1);
        if (answerVal) updateList.push(answerVal);
        else chart.series[0].addPoint({x: answerIndex, y: 1, color: "#F6666D", id: 1}, false);
    }

    if (letter === answer) {
        $(this).addClass("!bg-green-300 scale-150 z-50").siblings().addClass("w-0 text-xs");
        setTimeout(() => $(this).siblings().hide(), 100);
        setTimeout(() => {
            $(this).addClass("scale-0");
            parent.removeClass("pointer-events-none");
            setTimeout(() => cardInit(), 150);
        }, 500);
        return;
    }
    forceRedraw(this);
    $(this).removeClass("m-1.5 ring-1 shadow-lg hover:shadow-2xl").addClass("!bg-red-300");
    setTimeout(() => {
        $(this).addClass("text-xs w-0");
        if (parent.data()["removed"]) {
            parent.attr("expired", "");
            $(this).siblings(`[letter='${answer}']`).trigger("click");
        } else {
            parent.data("removed", true);
            setTimeout(() => {
                parent.removeClass("pointer-events-none");
                $(this).hide();
            }, 150);
        }
    }, 250);

});

function forceRedraw(element) {
    const display = element.style.display;
    element.style.display = 'none';
    // noinspection JSUnusedLocalSymbols
    const _ = element.offsetHeight;
    element.style.display = display;
}

cardInit();