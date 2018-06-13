import "bootstrap";

import { setCurrentLocation } from '../components/user_location';

document.app = {
  setCurrentLocation,
}


import { extendCornerButton } from '../components/cards';
extendCornerButton();

 import { rotateCards } from '../components/cards';
rotateCards();

setTimeout(fade_out, 2000);

function fade_out() {
  $(".alert-dismissible").fadeOut().empty();
}

import { landingInfo } from '../components/landing';
landingInfo();

