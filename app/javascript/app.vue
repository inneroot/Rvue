<template>
  
  <div v-for="day in calendar"
  <div id="app">
    <p>{{ message }}</p>
  </div>
</template>

<script>
export default {
  props: ["calendar"],
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
