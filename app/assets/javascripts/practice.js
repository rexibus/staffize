var nav = document.querySelectorAll('.navbar');
var logo_navbar = document.querySelectorAll('.navbar .navbar-items ul li');
// console.log(window.innerHeight);

  window.onscroll = function() {
    //console.log(window.scrollY);
    if (window.scrollY > 100) {
      nav[0].style.background = "#3895D3";
      logo_navbar[0].style.color = "white";
      logo_navbar[1].style.color = "white";
      logo_navbar[0].style.border = "3px solid white";
      logo_navbar[1].style.border = "3px solid white";

      //nav[0].style.background = "0px 4px 2px grey";
    } else {
      nav[0].style.background = "transparent";
      nav[0].style.boxShadow = "none";
      logo_navbar[0].style.color = "#3895D3";
      logo_navbar[1].style.color = "#3895D3";
      logo_navbar[0].style.border = "3px solid #3895D3";
      logo_navbar[1].style.border = "3px solid #3895D3";
    }
  }
