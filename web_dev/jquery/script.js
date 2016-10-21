$(function(){
    $("#poem").mouseout(function(){
        $("#poem").animate({
            opacity: 0.0
        });
    });
});

$(function(){
    $("span").click(function(){
        $("#poem").animate({opacity: 1});
    });
});

$(function(){
    $("#poem").hover(function(){
        $("#peach").animate({
            left: '400px'
        }, "slow");
    });
});