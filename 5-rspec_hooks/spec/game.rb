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
	context "when the player hits the target" do

		it "congratulates the player" do
			game = Game.new
			game.phase = :final

			game.player_hits_target
			puts "***************************************"
			puts game.output
			puts "***************************************"
			expect(game.output).to eq("Congratulations !")
		end

		it "sets the score to 100" do
			game = Game.new
			game.phase = :final

			game.player_hits_target

			puts "***************************************"
			puts game.score
			puts "***************************************"

			expect(game.score).to eq(100)
		end

	end
end

