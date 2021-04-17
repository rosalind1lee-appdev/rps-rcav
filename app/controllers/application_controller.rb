class ApplicationController < ActionController::Base
  layout("wrapper.html.erb")

  # Add your actions below this line
  # ================================
	def homepage
		render({:template => "game_templates/homepage.html.erb"})
	end

	def play_rock
    render({:template => "game_templates/user_rock.html.erb"})

    @comp_move = ["rock", "paper", "scissors"].sample

    if @comp_move == "rock"
			@outcome = "tied"
		elsif @comp_move == "paper"
			@outcome = “lost”
		elsif @comp_move == "scissors"
			@outcome = "won"
		end
	end

	def play_paper
		render({:template => "game_templates/user_paper.html.erb" })

		@comp_move = ["rock", "paper", "scissors"].sample
		
		if @comp_move == "rock"
			@outcome = "won"
		elsif @comp_move == "paper"
			@outcome = "tied"
		elsif @comp_move == "scissors"
			@outcome = "lost"
		end
	end

	def play_scissors
    render({:template => "game_templates/user_scissors.html.erb" })
    
    @comp_move = ["rock", "paper", "scissors"].sample
		
		if @comp_move == "rock"
			@outcome = "lost"
		elsif @comp_move == "paper"
			@outcome = "won"
		elsif @comp_move == "scissors"
			@outcome = "tied"
		end
	end
end
