// Booking form on artist page //
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

export{bookingForm};
