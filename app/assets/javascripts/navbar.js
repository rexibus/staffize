navbar.js

var nav = document.getElementById('nav');

  window.onscroll = function(){
    if (window.PageYOffset > 100) {

      nav.style.background = "#007bff";
      nav.style.background = "0px 4px 2px grey"}
    }

    else {
      nav.style.bacgkround = "transparent";
      nav.style.boxShadow = "none"
    }
  }
