Rails.application.routes.draw do
  post 'calculators/calculate_sum', to: 'calculators#calculate_sum'
end
