class RestaurantsController < ApplicationController
  RESTAURANTS = [
    {
      name: 'Overeasy',
      address: 'Wheelock Place'
    },
    {
      name: 'Jollibee',
      address: 'Lucky Plaza'
    },
    {
      name: 'Pizza Express',
      address: 'Scotts Mall'
    }
  ]

  def index
    # raise
    if params["restaurant_name"]
      @restaurants = RESTAURANTS.select do |restaurant|
        restaurant[:name] == params["restaurant_name"].capitalize
      end      
    else
      @restaurants = RESTAURANTS      
    end
  end

  def create
    RESTAURANTS << {
      name: params["restaurant_name"]
    }

    redirect_to restaurants_path
  end

end
