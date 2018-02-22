function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    var bookingLocation = document.getElementById('booking_location');

    if (bookingLocation) {
      var autocomplete = new google.maps.places.Autocomplete(bookingLocation, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(bookingLocation, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

export { autocomplete };
