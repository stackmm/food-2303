class FoodFacade
  def self.search_food(food)
    json = FoodService.get_food(food)

    json[:foods].map do |food_data|
      Food.new(food_data)
    end
  end
end