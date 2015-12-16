require "spec_helper"
require "bag_of_words"
require 'rspec/collection_matchers'

describe BagOfWords do
	it "it possible to put words on it"	do
		bag = BagOfWords.new
		bag.put("hello","world")

		expect(bag).to have(2).words
	end
end