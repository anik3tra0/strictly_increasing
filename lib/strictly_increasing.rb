class StrictlyIncreasing

	def initialize(array)
		@array = array
	end

	def increasing?
		return false if @array.length < 2
		return true  if @array.length == 2
		return evaluate
	end

	private

	def evaluate
		max_A = @array[0]
		max_B = @array[1]
		counter = 0

		@array[1..-1].each_with_index do |item, index|
			previous_item = @array[index]
			next_item = @array[index + 2]

			if previous_item >= item
				counter += 1
				return false if counter > 1
				return false if (index > 0 && item <= max_A && next_item && next_item <= max_B)
			end

			max_A = previous_item if previous_item > max_A
			max_B = item if item > max_B
		end

		return counter == 1
	end

end