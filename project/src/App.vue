<template>
    <div class="parent-view">
        <h1>Gestion des compteurs des composants enfants</h1>

        <p>Le compteur du composant {{ lastUpdatedComponent }} est de {{ lastUpdatedCounter }}</p>

        <div class="container-comp">
            <ChildComponent title="Composant 1" subtitle="Sous-titre 1"
                @update-counter="handleUpdate('Composant 1', $event)" />
            <ChildComponent title="Composant 2" subtitle="Sous-titre 2"
                @update-counter="handleUpdate('Composant 2', $event)" />
            <ChildComponent title="Composant 3" subtitle="Sous-titre 3"
                @update-counter="handleUpdate('Composant 3', $event)" />
            <ChildComponent title="Composant 4" subtitle="Sous-titre 4"
                @update-counter="handleUpdate('Composant 4', $event)" />
        </div>
    </div>
</template>

<script setup>
import { ref } from 'vue'
import ChildComponent from './components/ChildComponent.vue'

const lastUpdatedComponent = ref('')
const lastUpdatedCounter = ref(0)

function handleUpdate(componentTitle, counterValue) {
    // Mettre à jour componentTitle et lastUpdatedCounter ici
    lastUpdatedComponent.value = componentTitle
    lastUpdatedCounter.value = counterValue
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