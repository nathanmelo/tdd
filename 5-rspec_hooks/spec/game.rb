#require "spec_helper"
class Game

	attr_reader :output, :phase, :score

	def player_hits_target
		@output = "Congratulations !"
		@score = 100
	end

	def phase=(phase)
		@phase = phase 
	end

	def score 
		@score
	end

end

describe Game , "in the final phase" do
	
	before do
			@game = Game.new
			@game.phase = :final
	end

	context "when the player hits the target" do

		before { @game.player_hits_target }

		it "congratulates the player" do
			#substituido pelo before
			#game = Game.new
			#game.phase = :final

			#substituido pelo segundo before
			#@game.player_hits_target
			
			expect(@game.output).to eq("Congratulations !")
		end

		it "sets the score to 100" do
			#substituido pelo before
			#game = Game.new
			#game.phase = :final

			@game.player_hits_target

			expect(@game.score).to eq(100)
		end

	end
end

