class MathCalculator
	def self.add(input)
		if input.start_with?("//")
			delimiter = input[2..input.index("\n") - 1]
			input = input.split("\n",2).last.split(delimiter)
		else
			input = input.split(/[\n,]+/)
		end
		negatives = input.select {|n| n.to_i < 0}
		return "Negative numbers not allowed #{negatives.join(',')}" if negatives.any?
		input.sum(&:to_i)
	end
end