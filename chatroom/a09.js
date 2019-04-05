setInterval(function(){
       $('.chatWindow').load("home.php .chatWindow2")
    }
, 200);

setInterval(
    function(){
        $.ajax({
            // method:"POST",
            url: "a09Delete.php"
        })
    }
, 1000);

function myFunction() {
    $.ajax({
        method:"POST",
        url: "a09Server.php",
        data: $('form').serialize(),
        success: function () { console.log('msg sent');}
    });
    $('#username, #message').val(''); //resets values
    //$('.chatWindow').load("home.php .chatWindow2");
}

$(document).ready(function () {
    if(document.URL.indexOf("#")==-1){
        // Set the URL to whatever it was plus "#".
        url = document.URL+"#";
        location = "#";
    }
    console.log("doc.ready");
    $('.message').click(function(){
        console.log("clicked;");
        $('.timestamp').toggle();
    });
});

