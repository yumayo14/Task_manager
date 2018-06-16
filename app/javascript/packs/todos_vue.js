import Vue from 'vue'
import Todo from '../todo.vue'

new Vue ({
  el: '#todosApp',
  components: { Todo },
  templete: '<todo></todo>'
})
