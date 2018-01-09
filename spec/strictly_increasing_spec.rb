require 'strictly_increasing'

RSpec.describe StrictlyIncreasing do

	context 'Given a array of integers' do
		it 'should check if the array is strictly increasing - Example 1 - True' do
			expect(StrictlyIncreasing.new([1,3,2]).increasing?).to be_truthy
		end

		it 'should check if the array is strictly increasing - Example 2 - True' do
			expect(StrictlyIncreasing.new([10,1,2,3,4,5]).increasing?).to be_truthy
		end

		it 'should check if the array is strictly increasing - Example 3 - True' do
			expect(StrictlyIncreasing.new([0,-2,5,6]).increasing?).to be_truthy
		end

		it 'should check if the array is strictly increasing - Example 4 - False' do
			expect(StrictlyIncreasing.new([2,3,1,2]).increasing?).to be_falsy
		end

		it 'should check if the array is strictly increasing - Example 5 - False' do
			expect(StrictlyIncreasing.new([10,20,30,40,50,60]).increasing?).to be_falsy
		end

		it 'should check if the array is strictly increasing - Example 6 - False' do
			expect(StrictlyIncreasing.new([1,2,3,4,5,3,5,6]).increasing?).to be_falsy
		end
	end
end