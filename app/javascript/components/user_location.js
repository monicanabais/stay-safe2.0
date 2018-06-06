const getUserLocation = function () {
  navigator.geolocation.getCurrentPosition(function(position) {
    console.log(position)
  })
}

export default getUserLocation;
