// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import 'bootstrap';

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("typed")

require("jquery")
require("rails-ujs")

import { initSelect2 } from '../components/init_select2';
import { typed } from '../components/init_typed';

document.addEventListener("turbolinks:load", function() {
  initSelect2();
  typed();
});

import AOS from 'aos';

document.addEventListener('DOMContentLoaded', function() {
  AOS.init({
    startEvent: 'turbolinks:load' // if you are using turbolinks
  });
});
