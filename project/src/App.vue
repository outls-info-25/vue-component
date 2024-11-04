<template>
    <div class="parent-view">
        <h1>Gestion des compteurs des composants enfants</h1>

        <p>Le compteur du composant {{ lastUpdatedComponent }} est de {{ lastUpdatedCounter }}</p>

        <div class="container-comp">
            <ChildComponent />
            <ChildComponent />
            <ChildComponent />
            <ChildComponent />
        </div>
    </div>
</template>

<script setup>
import { ref } from 'vue'
import ChildComponent from './components/ChildComponent.vue'

const lastUpdatedComponent = ref('')
const lastUpdatedCounter = ref(0)

function handleUpdate(componentTitle, counterValue) {
}
</script>

<style scoped>
.parent-view {
    text-align: center;
    margin: 20px;
}

.container-comp{
    display: flex;
    align-content: space-around;
}
</style>