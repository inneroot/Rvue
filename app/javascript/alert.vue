<template>
  <div class="onealert" v-show="alertjson.text">
    <transition name="fade">
      <div :class="alertjson.alertclass" id="alertcontainer" v-if="visible">
        <span v-text="alertjson.text"></span>
        <button @click="visible = !visible" tabindex="0" aria-label="close alert"><i class="fa fa-close"></i></button>
      </div>
    </transition>
  </div>
</template>

<script>
export default {
  props: ["alertjson"],
  data: function() {
    return {
      visible: true
    };
  },
  methods: {
    close() {
      this.visible = false;
    }
  }
}
</script>

<style scoped>
#alertcontainer{
  padding: 15px;
  display: flex;
  align-items: center;
}
#alertcontainer span{
  flex: 1;
}
#alertcontainer button{
  flex: 0;
}
.onealert{
  color:bisque;
}
button{
  padding: 0 5px;
  margin: 5px 5px;
  text-align: center;
  border-radius: 3px;
}
.notice{
  background: #11998e;  /* fallback for old browsers */
  background: -webkit-linear-gradient(to right, #38ef7d, #11998e);  /* Chrome 10-25, Safari 5.1-6 */
  background: linear-gradient(to right, #38ef7d, #11998e); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
}
.alert{
  background: #ED213A;  /* fallback for old browsers */
  background: -webkit-linear-gradient(to right, #93291E, #ED213A);  /* Chrome 10-25, Safari 5.1-6 */
  background: linear-gradient(to right, #93291E, #ED213A); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
}
.fade-enter-active, .fade-leave-active {
  transition: opacity .5s;
}
.fade-enter, .fade-leave-to /* .fade-leave-active below version 2.1.8 */ {
  opacity: 0;
}
</style>