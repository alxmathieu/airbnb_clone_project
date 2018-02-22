/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb
import "bootstrap";
import "../plugins/flatpickr"

// User Edition
import { showEditBioForm } from '../components/show_edit_forms';
if (document.getElementById("edit-form-bio")) {
  showEditBioForm()
};

// Booking form on artist page
import { bookingForm } from '../components/booking_form';
if (document.querySelectorAll(".js-perf-link")) {
  bookingForm()
};

// Creating Performance
import { showCreatePerfForm } from '../components/show_edit_forms';
if (document.getElementById("create-perf-btn")) {
  showCreatePerfForm();
};

import { sweetAlertBookingButton } from '../components/booking_form';
if (document.getElementById("booking-button")) {
  sweetAlertBookingButton();
};

$(function () {
  $('[data-toggle="tooltip"]').tooltip()
})

$('.swipebox').swipebox();

