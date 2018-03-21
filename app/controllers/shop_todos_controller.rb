class ShopTodosController < ApplicationController
  before_action :set_note, only: [:show, :destroy]

  def new
    @todo = ShopTodo.new
    @todos = ShopTodo.all
  end

  def create
    @todo = ShopTodo.new(todo_params)
    if @todo.save
      redirect_to dashboard_shop_todo_path
    else
      render :new
    end
  end

  def destroy
    @todo.destroy
    respond_to do |format|
      format.html { redirect_to dashboard_shop_todo_path, notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_note
      @todo = ShopTodo.find(params[:id])
    end

  def todo_params
    params.require(:shop_todo).permit(:note, :priority)
  end

end
