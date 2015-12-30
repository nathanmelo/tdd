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

class BlogPost
	include Publishable
end

class Paper
	include Publishable
end

shared_examples_for "a publishable object" do
	describe "#publish!" do
		it "saves the date when the object is published" do
			subject.publish!

			today = Time.now.strftime("%Y-%m-%d")
			expect(subject.published_on).to eq(today)
		end
	end	
end

describe "a publisehd object" do
	subject {PublishableObject.new}

	include_examples "a publishable object"
end

