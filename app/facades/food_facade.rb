class FoodFacade
  def self.search_food(food)
    json = FoodService.get_food(food)

    json[:foods].take(10).map do |food_data|
      Food.new(food_data)
    end
  end

  def self.total_results(food)
    json = FoodService.get_food(food)

    json[:totalHits]
  end
end