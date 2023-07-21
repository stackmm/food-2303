class FoodFacade
  def self.search_food(food)
    json = FoodService.get_food(food)

    json[:foods].map do |food_data|
      Food.new(food_data)
    end
  end

  def self.food_details(food_id)
    json = FoodService.get_food_details(food_id)
    
    Food.new(json)
  end
end