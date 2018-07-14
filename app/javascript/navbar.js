console.log('nessun problema con il load js');


function initUpdateNavbarOnScroll() {
  const navbar = document.querySelector('.navbar-wagon');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('navbar-dispay-none');
      } else {
        navbar.classList.remove('navbar-dispay-none');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };

