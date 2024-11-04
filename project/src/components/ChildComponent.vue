<template>
  <div class="child-component">
    <h3>Title</h3>
    <h4>subtitle</h4>
    <p>Le compteur est de : ???</p>
    <button>Incrémenter le compteur</button>
  </div>
</template>

<script setup>
import { ref } from 'vue'

const counter = ref(0)

function incrementCounter() {
  counter.value++
}
</script>

<style scoped>
.child-component {
  padding: 10px;
  width: 20%;
  border-radius: 10px;
  background-color: #f0f8ff;
  margin: 10px;
  text-align: center;
}

button {
  margin-top: 10px;
  padding: 5px 10px;
  border-radius: 5px;
}
</style>