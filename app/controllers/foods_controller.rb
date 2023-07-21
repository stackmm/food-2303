class FoodsController < ApplicationController
  def index
    @foods = FoodFacade.search_food(params[:q])
    @num_results = FoodFacade.total_results(params[:q])
  end
end