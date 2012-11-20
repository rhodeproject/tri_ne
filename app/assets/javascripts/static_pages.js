$(document).ready(function(){
    $('#rp').click(function(){
        window.open('https://www.rhodeproject.com');
    });
    $('#leadership').hide();
    $('#home').fadeIn();
    $('#members').hide();
    $('#sponsors').hide();


    $('#navMembers').click(function(){
        window.open('http://www.rhodeproject.com');
    });

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
});