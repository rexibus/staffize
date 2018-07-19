// import "maps";

import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.min.css";
flatpickr(".datepicker", {
  altInput: true,
  altFormat: "F j, Y",
  dateFormat: "Y-m-d",
  minDate: new Date()
});


import { initUpdateNavbarOnScroll } from '../navbar';
initUpdateNavbarOnScroll();

import "alert";
import "timepicker"
import "timepicker/jquery.timepicker.css"

$('.timing').timepicker();


