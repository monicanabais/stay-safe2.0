function sendCurrentLocation (data) {

  fetch(`/current_locations`, {
    method: "POST",
    credentials: "same-origin",
    headers: {
      "Content-Type": "application/json"
    },
    body: JSON.stringify(data)
  })
  .then(response => response.json())
  .then((data) => {
    console.log(data); // Look at local_names.default
    const button = document.getElementById('location');
    button.classList.remove('non-current-location-new');
    button.classList.add('current-location-new');
  });
};

function setCurrentLocation () {
    navigator.geolocation.getCurrentPosition((position) => {
    sendCurrentLocation({ lat: position.coords.latitude, lng: position.coords.longitude });
  });
};

// setCurrentLocation();

export { setCurrentLocation };
