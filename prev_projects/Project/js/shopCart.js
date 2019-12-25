function myFunction(type) {
    $.ajax({
        method:"POST",
        url: "toCart.php",
        data:{
          type:type
        },
        // data: $('form').serialize(),
        success: function () { alert('added to cart');}
    });
}

function removeCart(type) {
    $.ajax({
        method:"POST",
        url: "removeCart.php",
        data:{
          type:type
        },
        success: function () { alert('removed from cart');}
    });
    setInterval(function(){
            $('.prodCont').load("shopCart.php .prodCont2")
        }
    , 500);
}
function emailFunc() {
    $.ajax({
        method:"POST",
        url: "email.php",
        data: $('form').serialize(),
        success: function () { alert("sent");}
    });
    $('#fname, #email, #subject').val(''); //resets values
}
