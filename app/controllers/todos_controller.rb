class TodosController < ApplicationController
  def index
    @todos = Todo.all
    @todo = Todo.new
    @memo = Memo.new
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
    if @todo.delete
      redirect_to root_path
    end
  end

private
  def todo_params
    params.require(:todo).permit(:title, :text)
  end

end
