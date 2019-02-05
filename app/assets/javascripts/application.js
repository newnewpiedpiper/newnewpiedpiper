// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
// = require jquery


     //= require bootstrap
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//=jquery


 function w3_open() {
  document.getElementById("mySidebar").style.width = "250px";
}
function w3_close() {
  document.getElementById("mySidebar").style.width = "0px";
}
    function changeColor(event) {

        if (!event) {
            event = window.event; // Older versions of IE use 
                                  // a global reference 
                                  // and not an argument.
        };
    
        var el = (event.target || event.srcElement); // DOM uses 'target';
                                                     // older versions of 
                                                     // IE use 'srcElement'
        el.style.color="red";

    }
    function showReply(id)
    {
        var comment=document.getElementById("comment_reply_"+id);
        var reply=document.getElementById("reply_prompt_"+id);
        if(comment.style.display == "block")
        {
            reply.innerHTML = "Reply";
            comment.style.display = "none";
        }
        else{
            comment.style.display = "block";
        
        reply.innerHTML = "X";
        }
        
    }
function resizeGridItem(item){
   var grid = document.getElementsByClassName("grid")[0];
   var rowHeight = parseInt(window.getComputedStyle(grid).getPropertyValue('grid-auto-rows'));
   var rowGap = parseInt(window.getComputedStyle(grid).getPropertyValue('grid-row-gap'));
   var rowSpan = Math.ceil((item.querySelector('.content').getBoundingClientRect().height+rowGap)/(rowHeight+rowGap));
   item.style.gridRowEnd = "span "+rowSpan;
}

function resizeAllGridItems(){
   allItems = document.getElementsByClassName("item");
   for(x=0;x<allItems.length;x++){
      resizeGridItem(allItems[x]);
   }
}

window.onload = resizeAllGridItems();

window.addEventListener("resize", resizeAllGridItems);

var allItems = document.getElementsByClassName("item");
for(var x=0;x<allItems.length;x++){
   imagesLoaded( allItems[x], resizeInstance);
}

function resizeInstance(instance){
   var item = instance.elements[0];
   resizeGridItem(item);
}