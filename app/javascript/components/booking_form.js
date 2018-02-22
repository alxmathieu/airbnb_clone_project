// Booking form on artist page //
import swal from 'sweetalert';

function fillBookingPerformanceId(id, name) {
  const field = document.getElementById("booking_performance_id");
  const title = document.getElementById("booking-title");
  field.value = id;
  title.innerHTML = name;
};

const getPerformanceId = (event) => {
  event.preventDefault();
  document.querySelectorAll(".selected-perf").forEach( a =>
    a.classList.remove("selected-perf")
  );
  event.currentTarget.children[0].classList.toggle("selected-perf");
  const performanceId = event.currentTarget.dataset.performanceid;
  const performanceName = event.currentTarget.dataset.perfname;
  fillBookingPerformanceId(performanceId, performanceName);
};

function bookingForm() {
  document.querySelectorAll(".js-perf-link").forEach( link =>
    link.addEventListener("click", getPerformanceId)
  );
};

function formIsValid() {
  const bookingBtn = document.getElementById('booking-button');
  const dateField = document.getElementById('booking_date');
  const locationField = document.getElementById('booking_location');
  if (dateField.value != "" && locationField.value != "") {
    swal({
      title: "Booking confirmed!",
      text: "The artist will be notified of your booking, he should get in touch soon!",
      icon: "success"
    })
    .then((value) => {
      if (value) {
        document.location.href = '/dashboard';
      }
    });
  }
};

function sweetAlertBookingButton() {
  document.getElementById('booking-button').addEventListener('click', formIsValid)
};

export { sweetAlertBookingButton };

export{bookingForm};
