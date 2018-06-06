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
    console.log(data.hits); // Look at local_names.default
  });
}

const setCurrentLocation = () => {
  navigator.geolocation.getCurrentPosition((position) => {
    sendCurrentLocation({ lat: position.coords.latitude, lng: position.coords.longitude })
  });
}

setCurrentLocation()
