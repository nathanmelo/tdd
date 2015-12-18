class BagOfWords

	attr_reader :words

	def initialize
	             @words = []
	end

	def put(*words)
                          puts "*****************************************"
                	@words += words
                          puts @words
                          puts "*****************************************"
            end
end