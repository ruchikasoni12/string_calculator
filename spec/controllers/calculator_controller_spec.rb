require 'rails_helper'
RSpec.describe CalculatorsController, type: :controller do
   describe "POST #calculate_sum" do
	 	context "when no numbers are provided" do
	 		it "returns 0" do
	 			post :calculate_sum, params: {numbers: ""}
	 			expect(JSON.parse(response.body)["result"]).to eq(0)
	 		end
	 	end
	 	context "when number is provided" do
	 		it "returns the number itself" do
	 			post :calculate_sum, params: { numbers: "5" }
	 			expect(JSON.parse(response.body)["result"]).to eq(5)
	 		end
	 		it "return numbers" do
	 			expect(MathCalculator.add("//;\n1;2;3")).to eq(6)
	 		end
	 	end
   end
end
