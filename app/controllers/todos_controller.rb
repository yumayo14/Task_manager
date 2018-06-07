class TodosController < ApplicationController
  def index
    @todos = Todo.all.select{|todo| todo if todo.followed.blank? || todo.followed.ids == todo.id}
    @todo = Todo.new
    @todo.todo_to.build
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    if @todo.save
      redirect_to root_path
    end
  end

  def update
    @todo = Todo.find(params[:id])
    if @todo.update(todo_params)
      redirect_to root_path
    end
  end

  def destroy
    @todo = Todo.find(params[:id])
    if @todo.todo_from.delete_all && @todo.delete || @todo.delete
      redirect_to root_path
    end
  end

private
  def todo_params
    params.require(:todo).permit(:title, :text, todo_to_attributes: [:id, :to_todo_id, :from_todo_id])
  end

end
