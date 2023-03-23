jQuery.fn.random = function () {
    return jQuery(this[Math.floor(Math.random() * this.length)]);
};

const theBeautifulNames = ["ا", "ب", "ت", "ث", "ج", "ح", "خ", "د", "ذ", "ر", "ز", "س", "ش", "ص", "ض", "ط", "ظ", "ع", "غ", "ف", "ق", "ك", "ل", "م", "ن", "ه", "و", "ي"];

const floatingContainer = $("#floating-text-container");
const floatingWidthHeight = floatingContainer.height();
const floatingWidth = floatingContainer.width();

for (const beautifulName of theBeautifulNames) {
    floatingContainer.append($('<span />').html(beautifulName).css({
        "top": Math.floor(Math.random() * Number(floatingWidthHeight - 90)),
        "left": Math.floor(Math.random() * Number(floatingWidth - 160)),
        "opacity": "0",
    }));
}
const floatingNames = floatingContainer.children("span");
setInterval(function () {
    floatingNames.random().css({
        "translate": (Math.random() > 0.5 ? -1 : 1) * Math.random() * 400 + "px " +
            (Math.random() > 0.5 ? -1 : 1) * Math.random() * 400 + "px",
        "rotate": (Math.random() > 0.5 ? -1 : 1) * Math.random() * 60 + "deg",
        "animation": "show 3s ease alternate 2"
    });
}, 50);

floatingNames.on("animationend", function () {
    $(this).css({
        "translate": "",
        "rotate": "",
        "animation": ""
    });
});
