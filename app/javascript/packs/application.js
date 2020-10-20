// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import 'bootstrap';

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("jquery")
import 'bootstrap'

import { initSelect2 } from '../components/init_select2';
import { initUpdateNavbarOnScroll } from '../components/init_navbar';
import { loadDynamicBannerText } from '../components/init_typed';
import { validRating, verifyValid } from '../components/form_validation';


document.addEventListener("turbolinks:load", () => {
  initSelect2();
  loadDynamicBannerText();
  initUpdateNavbarOnScroll();

  const form = document.querySelector('form')

  form.addEventListener('blur', (event) => {
    event.target.style.background = '';
    if (event.target.value === "") {
      event.target.classList.add("is-invalid");
      event.target.classList.remove("is-valid");
    } else {
      event.target.classList.add("is-valid");
      event.target.classList.remove("is-invalid");
    }
    if (event.target.name === "review[rating]") {
      validRating(event.target.value);
    }
    if (verifyValid()) {
      const submit = form.querySelector('submit');
      submit.disabled = false;
    } else {
      submit.disabled = true;
    }
  }, true);
});


