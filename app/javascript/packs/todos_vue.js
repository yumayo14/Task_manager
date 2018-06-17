import Vue from 'vue'
import Todo from '../todo.vue'
import Trixform from '../trixform.vue'

Vue.component('todo-form', Trixform )

new Vue ({
  el: '#todosApp',
  components: { Todo },
  templete: '<todo></todo>'
})
