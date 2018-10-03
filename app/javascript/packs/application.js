 import TurbolinksAdapter from 'vue-turbolinks';
 import Vue from 'vue/dist/vue.esm';
 import App from '../app.vue';
 import Day from '../day.vue'; 
 import Calendar from '../calendar.vue';
 import Alert from '../alert.vue';
 Vue.use(TurbolinksAdapter);
 
 Vue.component('app', App);
 Vue.component('day', Day);
 Vue.component('calendar', Calendar);
 Vue.component('alert', Alert);
 
 document.addEventListener('turbolinks:load', () => {
   const app = new Vue({
     el: '[data-behavior="vue"]',
   });
 });

