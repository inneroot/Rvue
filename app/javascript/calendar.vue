<template>
<div class = "calendar_vue_instance">
  <div id="calendar_instance">
    
    <div class="backbuttonblock">
      <button v-show="showfullbackbitton" id="fullbackbutton" @click="scrolltozero">
      <i class="fa fa-angle-double-left" style="font-size:36px"></i>
      </button>
      <button v-show="showbackbitton" id="backbutton" @click="fastforward(-332)">
      <i class="fa fa-angle-left" style="font-size:36px"></i>
      </button>
    </div>
    <div class="forwardbuttonblock">
    <button id="forwardbutton" @click="fastforward(332)">
      <i class="fa fa-angle-right" style="font-size:36px"></i>
    </button>
    </div>
    
    <div id="scrollcontent" 
    @mousemove.prevent="move" @mousedown.left.prevent="down" @mouseup="up" @mouseleave="mouseLeave">
      <div v-for="day in mdays" class="day shadow" v-bind:data-color="day.color" v-bind:id="day.mday">
        <div class="cardhead">
          <h2  v-html="day.mday"></h2>
          <p v-html="day.wday" class="wday"></p>
          <p v-html="day.saints"></p>
        </div>
        <div class="cardbottom">
          <hr v-bind:class="day.color">
          <ul>
            <li v-for="service in day.services"><span v-html="service.time"></span> <span v-html="service.title"></span></li>
          </ul>
        </div>
      </div>
    </div>
    
  </div>
</div>
</template>

<script>
export default {
  props: ["mdays"],
  mounted: () =>{
    let parent = document.getElementById('calendar_instance');
    let child = document.getElementById('scrollcontent');
    let offset = child.offsetWidth - child.clientWidth;
    parent.style.height = child.clientHeight-offset+"px";
  },
  data: function(){
    return {
      drag: false,
      xStart: 0,
      xScroll: 0
    };
  },
  computed: {
    scrollelement: function () {
      return document.getElementById('scrollcontent');
    },
    showbackbitton: function () {
      return this.xScroll > 335;
    },
    showfullbackbitton: function () {
      return this.xScroll > 2000;
    },
  },
  methods: {
    scrolltozero: function(){
      this.scrollelement.scrollTo(0,0);
    },
    fastforward: function (move){
      this.xScroll = this.scrollelement.scrollLeft;
      this.toscroll(-move);
    },
    toscroll: function(move) {
      this.scrollelement.scrollTo(this.xScroll - move, 0);
    },
    down: function ($event) {
      this.drag = true;
      this.xScroll = this.scrollelement.scrollLeft;
      this.xStart = $event.clientX;
    },
    move: function ($event) {
      if (this.drag) {
        let moved = $event.clientX - this.xStart
        this.toscroll(moved);
      }
    },
  	up: function ($event){
  	  this.drag = false;
    },
    mouseLeave: function($event) {
      this.drag = false;
    }
  }
}
</script>

<style scoped>
h2{
  padding: 0;
  margin: 0;
}
#calendar_instance{
  position: relative;
  overflow: hidden;
  height: 100%;
}
#scrollcontent{
  padding-bottom: 20px;
  cursor: grab; 
  cursor : -o-grab; 
  cursor : -moz-grab; 
  cursor : -webkit-grab;
  display: flex;
  flex-wrap: nowrap;
  align-items: start;
  overflow-x: scroll;
  scroll-behavior: smooth;
  padding-right: 0px;
  padding-left: 10px;
}
.day {
  align-self: flex-end;
  flex-shrink: 0;
  width: 300px;
  text-align: center;
  display: flex;
  flex-direction: column;
  align-items: center;
  min-height: 260px;
  margin-right: 10px;
  padding: 10px;
  border-radius: 10px;
}
.cardhead{
  flex: 1;
}
.wday{
  color: #aaa;
  padding: 0;
  margin: 0;
}
.cardbottom{
  flex: 0;
  font-size: 12pt;
}
.calendar_vue_instance{
  position: relative;
}
.backbuttonblock{
  position: absolute;
  left: 0;
  top: 25%;
  height: 50%;
}
.forwardbuttonblock{
  position: absolute;
  top: 25%;
  height: 50%;
  right: 0;
}
#calendar_instance button{
  height:100%;
  width: 30px;
  background: rgb(0,0,0, 0.5);
  color: white;
  border: none;
  padding: 0;
  font: inherit;
  cursor: pointer;
  outline: inherit;
}
#calendar_instance button:hover{
  background: rgb(0,0,0, 0.8);
}
ul{
  margin: 0;
  padding: 0;
}
li{
  font-size: 10pt;
  list-style: none;
  padding-top: 2px;
  margin: 0;
}
</style>