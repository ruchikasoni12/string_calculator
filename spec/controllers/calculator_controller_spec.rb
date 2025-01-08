require 'rails_helper'
RSpec.describe CalculatorsController, type: :controller do
   describe "POST #calculate_sum" do
	 	context "when no numbers are provided" do
	 		it "returns 0" do
	 			post :calculate_sum, params: {numbers: ""}
	 			expect(response).to have_http_status(:ok)
	 			expect(JSON.parse(response.body)["result"]).to eq(0)
	 		end
	 	end
	 	context "when number is provided" do
	 		it "returns the number itself" do
	 			post :calculate_sum, params: { numbers: "5" }
	 			expect(response).to have_http_status(:ok)
	 			expect(JSON.parse(response.body)["result"]).to eq(5)
	 		end
	 	end
    end
end