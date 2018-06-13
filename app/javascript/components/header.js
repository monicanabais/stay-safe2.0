function initUpdateHeaderOnScroll() {
  const header = document.querySelector('.header-solid');
  if (header) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        console.log('toggle on')
        header.classList.remove('transparent');
      // header.classList.add('header-solid');
      }
      else {
        header.classList.add('transparent');
      //   header.classList.remove('header-solid');
      }
    });
  }
}

export { initUpdateHeaderOnScroll };
