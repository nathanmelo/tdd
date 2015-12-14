class Stack
	def initialize
		@elements = []
		@last_element_index = -1 
	end

	def push (element)
		@elements << element
		@last_element_index += 1
	end

	def top
		@elements[@last_element_index]
	end
end


describe Stack do
	describe "#push" do
		it "puts an element at the top of the stack" do
			stack = Stack.new

			stack.push(1);
			stack.push(2);

			expect(stack.top).to eq (2);
		end
	end
end

