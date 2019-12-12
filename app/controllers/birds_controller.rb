class BirdsController < ApplicationController
  def index
    birds = Bird.all
    render json: {birds: birds, other_data: ["The first bird is #{birds[0].name}", "I don't like birds that much"] }.to_json
  end
end
