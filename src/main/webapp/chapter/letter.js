$(".sound-button").on("click", function () {
    $(this).siblings(".floating-hint").find(".floating-hint-state").click();
    setInterval(() => {
        $(this).siblings(".floating-hint").remove();
    }, 200);
});