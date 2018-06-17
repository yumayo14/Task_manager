<template>
  <div class="content">
    <h1 id="todo">
      My Todos!
    </h1>
    <ul class="all_todos" id="todos_app">
      <li  v-for="todo in todos" class="flex_todo_memos">
        <div class="todo">
          <h1 class="heading"> {{todo.title}} </h1>
          <todo-form></todo-form>
        </div>
      </li>
    </ul>
  </div>
</template>

<script>
  import axios from 'axios';

  export default {
    data: function () {
      return {
        todos: [],
        newTodo: {
          title: "",
          text: ""
        }
      }
    },
    mounted: function () {
      this.fetchTasks();
    },
    methods: {
      fetchTasks: function () {
        axios.get('../todos.json').then((response) => {
          for(var i = 0; i < response.data.todos.length; i++) {
              this.todos.push(response.data.todos[i]);
            }
          }, (error) => {
            console.log(error);
        });
      },
      addItem: function(e) {
        e.preventDefault();
        var todo = {
          title: this.newTodo.title,
          text: this.newTodo.text
        }
        this.todos.push(todo);
        this.newTodo = ''
      }
    }
  }
</script>
