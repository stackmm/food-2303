class FoodsController < ApplicationController
  def index
    @foods = FoodFacade.search_food(params[:q])
  end
end