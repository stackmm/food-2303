class FoodService
  def self.conn
    Faraday.new(url: 'https://api.nal.usda.gov') do |faraday|
      faraday.params['api_key'] = ENV['api_key']
    end
  end

  def self.get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_food(food)
    get_url("/fdc/v1/foods/search?query=#{food}")
  end

  def self.get_food_details(food_id)
    get_url("/fdc/v1/food/#{food_id}")
  end
end