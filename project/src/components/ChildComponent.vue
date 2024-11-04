<template>
  <div class="child-component">
    <h3>{{ title }}</h3>
    <h4>{{ subtitle }}</h4>
    <p>Le compteur est de : {{ counter }}</p>
    <button @click="incrementCounter">Incrémenter le compteur</button>
  </div>
</template>

<script setup>
import { ref } from 'vue'

const props = defineProps({
  title: String,
  subtitle: String,
})

const counter = ref(0)

const emit = defineEmits(['update-counter'])

function incrementCounter() {
  counter.value++
  emit('update-counter', counter.value) 
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