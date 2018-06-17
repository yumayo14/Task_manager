class MemosController < ApplicationController
  def create
    @memo = Memo.new(memo_params)
    if @memo.save
      redirect_to root_path
    end
  end

  def delete
    todo = Todo.find(params[:todo_id])
    @memos = todo.memos.where(done: params[:done])
    if @memos.delete_all
      respond_to do |format|
        format.json
      end
    end
  end

private
  def memo_params
    params.require(:memo).permit( :text, :todo_id)
  end

end
