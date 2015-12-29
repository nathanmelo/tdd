module Publishable
	attr_reader :published_on

	def publish!
		today = Time.now.strftime("%Y-%m-%d")
		@published_on = today
	end
end

class PublishableObject
	include Publishable
end

describe "A published object" do

	subject { PublishableObject.new}

	describe "#publish!" do
		it "saves the publication date" do
			subject.publish!

			today = Time.now.strftime("%Y-%m-%d")
			expect(subject.published_on).to eq(today)
		end
	end	
end