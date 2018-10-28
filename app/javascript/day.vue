<template>
  <div  v-bind:data-color="oneday.color" v-bind:id="oneday.mday" v-bind:key="oneday.mday">
    <div>
      <h2  v-html="oneday.mday"></h2>
      <p v-html="oneday.wday"></p>
      <p v-html="oneday.saints"></p>
    </div>
    <div>
      <hr v-bind:class="oneday.color">
      <span v-html="oneday.services"></span>
    </div>
  </div>
</template>

<script>
export default {
  props: ["oneday"],
}
</script>

<style scoped>

</style>