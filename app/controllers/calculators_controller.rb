class CalculatorsController < ApplicationController
 def calculate_sum
 	num = params[:numbers]
 	if num.empty?
      render json: {result: 0}
    end
  end
end