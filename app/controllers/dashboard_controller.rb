class DashboardController < ApplicationController
  before_action  :authenticate_user!

  def index
  end

  def shop_todo
    @todoNew = ShopTodo.new
    @todos = ShopTodo.all
  end
end
