class Paper 
	attr_reader :published_on

	def publish!
		today = Time.now.strftime("%Y-%m-%d")
		@published_on = today
	end
end

describe Paper do 
	describe "#publish!" do
		
		it "save the publication date" do
			paper = Paper.new

			paper.publish!

			today = Time.now.strftime("%Y-%m-%d")
			expect(paper.published_on).to eq(today)
		end

	end
	
end