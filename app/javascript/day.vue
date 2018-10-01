<template>
  <div class="day">
    <h1>{{ mday }}</h1>
    <p>{{ message }}</p>
  </div>
</template>

<script>
export default {
  props: ["message", "mday"],
}
</script>

<style scoped>
.day {
    display: block;
    flex-shrink: 0;
    height: 150px;
    width: 200px;
    border: 1px solid black;
}
</style>