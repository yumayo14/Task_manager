class MemosController < ApplicationController
  def create
    @memo = Memo.new(memo_params)
    if @memo.save
      redirect_to root_path
    end
  end
private
  def memo_params
    params.require(:memo).permit( :text, :todo_id)
  end

end
