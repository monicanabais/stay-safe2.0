function landingInfo() {

    const landindInfoButton = document.querySelector('.landing-more-info-button');
    const landingInfo = document.querySelector('.landing-more-info');
    const landingLogo = document.querySelector('.landing-logo');
    const landingDescription = document.querySelector('.landing-description');
    const landingStartButton = document.querySelector('.landing-start-button');


    if (landindInfoButton) {
      landindInfoButton.addEventListener('click', (event) => {
      console.log('worked')
      landingLogo.classList.toggle('blurred');
      landingDescription.classList.toggle('blurred');
      landingStartButton.classList.toggle('blurred');
      landingInfo.classList.toggle('hidden');
      });
    }
}

export { landingInfo };
