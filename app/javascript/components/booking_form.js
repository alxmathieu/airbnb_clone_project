// Booking form on artist page //
function fillBookingPerformanceId(id) {
  const field = document.getElementById("booking_performance_id");
  field.value = id;
};

function getPerformanceId() {
  event.preventDefault();
  document.querySelectorAll(".selected-perf").forEach( a =>
    a.classList.remove("selected-perf")
  );
  event.currentTarget.children[0].classList.toggle("selected-perf");
  const performanceId = event.target.parentNode.dataset.performanceid;
  console.log(performanceId);
  fillBookingPerformanceId(performanceId);
};

function bookingForm() {
  document.querySelectorAll(".js-perf-link").forEach( link =>
    link.addEventListener("click", getPerformanceId)
  );
};

export{bookingForm};
