// jQuery Initialization
jQuery(document).ready(function($){
"use strict"; 

      /* Testimonials ticker function call */ 
         $('.ticker_fade').list_ticker({
          speed:4000,
          effect:'fade'
        });

});

/* Set the width of the side navigation to 250px and the left margin of the page content to 250px */
function openNav() {
    document.getElementById("mySidenav").style.width = "40%";
    document.getElementById("push-content").style.marginLeft = "40%";
}

/* Set the width of the side navigation to 0 and the left margin of the page content to 0 */
function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
    document.getElementById("push-content").style.marginLeft = "0";
}
