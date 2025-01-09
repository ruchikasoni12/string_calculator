class CalculatorsController < ApplicationController
 def calculate_sum
 	num = params[:numbers]
 	if num.present?
          result = MathCalculator.add(num)
          render json: {result: result}
     else
          render json: {result: 0}
     end 
  end
end
