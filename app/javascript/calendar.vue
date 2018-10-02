<template>
<div class = "calendar_vue_instance">
  <div id="calendar_instance">
    <button id="backbutton" @click="fastforward(-664)"><i class="fa fa-chevron-left" style="font-size:36px"></i></button>
    <button id="forwardbutton" @click="fastforward(664)"> <i class="fa fa-chevron-right" style="font-size:36px"></i> </button>
    <div id="scrollcontent"  @mousemove.prevent="move" @mousedown.left.prevent="down" @mouseup="up" @mouseleave="mouseLeave">
      <div v-for="day in mdays" class="day" v-bind:id="day.mday">
        <div>
          <h1>{{ day.mday }}</h1>
          <p>{{ day.saints }}</p>
          <hr>
          <p v-for="service in day.services">{{service.time}} - {{service.title}}</p>
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
      xScroll: 0,
      
    };
  },
  computed: {
    scrollelement: function () {
      return document.getElementById('scrollcontent');
    },
    
  },
  methods: {
    fastforward: function (move){
      if (move === 1) {
        
      }
      if (move === -1) {
        
      }
      this.xScroll = this.scrollelement.scrollLeft;
      this.toscroll(-move);
    },
    scrolltoday: function(day){
      var elmnt = document.getElementById(day.mday);
      elmnt.scrollIntoView(true); 
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

h1{
  text-align: center;
}
#calendar_instance{
  position: relative;
  overflow: hidden;
  height: 100%;
}
#scrollcontent{
  cursor: grab; 
  cursor : -o-grab; 
  cursor : -moz-grab; 
  cursor : -webkit-grab;
  display: flex;
  flex-wrap: nowrap;
  overflow-x: scroll;
  scroll-behavior: smooth;
  padding-right: 0px;
}
.day {
    display: block;
    flex-shrink: 0;
    width: 300px;
    border: 1px solid black;
    margin-right: 10px;
    padding: 10px;
}
.buttons_pannel{
  background: blue;
  width: 50vw;
  display: flex;
  flex-wrap: wrap;
}
.buttons_pannel button{
  background: red;
  width: 5vw;
}
.calendar_vue_instance{
  position: relative;
}

#backbutton{
  position: absolute;
  top:25%;
  height: 50%;
  left: 0;
  background: transparent;
}
#forwardbutton{
  position: absolute;
  top:25%;
  height: 50%;
  right: 0;
}
#calendar_instance button{
  background: rgb(0,0,0, 0.2);
  color: white;
  border: none;
  padding: 0;
  font: inherit;
  cursor: pointer;
  outline: inherit;
}
#calendar_instance button:hover{
  background: rgb(0,0,0, 0.5);
}
</style>