<template>
  <form @submit="addItem" action="/todos" method="post">
    <div class="field">
      <input type="text" v-model= "todo.title">
    </div>
    <div class="field">
      <input type="text" v-model= "todo.text" id="trix">
      <trix-editor id="trix"></trix-editor>
    </div>
    <div class="action">
      <input type="submit">
    </div>
    <div class="action">
    </div>
  </form>
</template>
