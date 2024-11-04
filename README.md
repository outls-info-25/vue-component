# Exercice : Application Vue 3 - Composants, Props et Événements

Vous allez créer une application Vue 3 où un composant parent affiche des compteurs gérés dans des composants enfants. Chaque composant enfant contient un bouton pour incrémenter son compteur, et le parent affiche quel compteur a été modifié en dernier.

Suivez les étapes ci-dessous pour créer cette application et assimiler les concepts de composants, props, et événements dans Vue 3.

## Étapes
1. **Ajout de props pour le titre et le sous-titre du composant enfant :**
   - Dans `ChildComponent.vue`, ajoutez deux props `title` et `subtitle`.
   - Ces props permettent au composant parent de définir le titre et le sous-titre de chaque enfant.
   - **Indice** : Utilisez la fonction `const props = defineProps()` de `<script setup>` pour déclarer ces props.

2. **Passage de props dans la page parent :**
   - Dans `ParentView.vue`, passez des valeurs différentes pour `title` et `subtitle` de chaque `ChildComponent`.
   - **Exemple** : Utilisez `:title="..."` et `:subtitle="..."` pour chaque composant enfant, avec des valeurs adaptées pour différencier les enfants. Vous devez utiliser `:title` si la valeur est dynamique et `title` si la valeur est statique.

3. **Émission d'un événement depuis le composant enfant :**
   - Dans `ChildComponent.vue`, modifiez la fonction `incrementCounter` pour émettre un événement vers le parent chaque fois que le compteur est incrémenté.
   - Utilisez la fonction `emit` pour envoyer un événement appelé, par exemple, `"update-counter"` avec la valeur actuelle du compteur.
   - **Indice** : Utilisez `defineEmits` pour définir les événements dans `<script setup>`.

4. **Récupération de l'événement dans le composant parent :**
   - Dans `ParentView.vue`, écoutez l'événement `update-counter` émis par chaque composant enfant.
   - Lorsque l’événement est capté, mettez à jour les variables `lastUpdatedComponent` et `lastUpdatedCounter` pour refléter quel composant a été modifié en dernier et sa valeur. *Le paramètre `componentTitle` peut-être du texte statique*.
   - **Exemple** : Utilisez `@update-counter` sur chaque `ChildComponent` pour appeler une fonction de gestion d’événement `@event_name="function('param_text', $event)"`. `$event` est la valeur émise par l'enfant.

## Objectifs finaux
- Affichez dynamiquement le titre et le sous-titre pour chaque `ChildComponent` en utilisant les props.
- Gérez la mise à jour du compteur dans le parent lorsqu'un bouton d'un enfant est cliqué.
- Affichez dans le paragraphe du parent le dernier compteur incrémenté avec son numéro de composant et sa valeur.


# Installation

## VSCode
- Installer l'extension Volar

# Développement

## Installation des dépendances
- `docker exec dev-vue npm install`

## Démarrer le serveur (A faire à chaque fois)
- Démarrer le conteneur Docker : `docker-compose up -d`
- Se connecter au conteneur web : `docker exec -it vue-components bash`


## Pour développer avec Vue
- Une fois dans le conteneur web
- Initialiser le projet : `npm install`
- Démarrer le serveur avec le mode de watch : `npm run dev` ou `npm run start`
- Accéder au site : `http://localhost:8000/`

