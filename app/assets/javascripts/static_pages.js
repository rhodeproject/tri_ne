$(document).ready(function(){

    $('#leadership').hide();
    $('#home').fadeIn();
    $('#members').hide();
    $('#sponsors').hide();

    $('#navHome').click(function(){
        $('#members').hide();
        $('#home').fadeIn();
        $('#leadership').hide();
        $('#sponsors').hide();
    });

    $('#navLeadership').click(function(){
        $('#members').hide();
        $('#home').hide();
        $('#leadership').fadeIn();
        $('#sponsors').hide();
    });

    $('#navSponsors').click(function(){
        $('#members').hide();
        $('#home').hide();
        $('#leadership').hide();
        $('#sponsors').fadeIn();
    });

    $("#sponsors_cycle").cycle({
        fx: 'fade',
        speed: '2500',
        timeout: '1000'
    });

    $("#main_page_cycle").cycle({
        fx: 'fade',
        speed: '2500',
        timeout: '1000'
    });

    $(".sponsorlink").click(function(){
        window.open($(this).attr("alt"));
        return false;
    });
});