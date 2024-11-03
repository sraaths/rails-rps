class ZebraController < ApplicationController
  def giraffe 
    @player_move = "rock"
    @computer_move = ["rock", "paper", "scissors"].sample
    @result = determine_result(@player_move, @computer_move)
    
    render template: "game_templates/play_rock"
  end 

  def elephant 
    @player_move = "paper"
    @computer_move = ["rock", "paper", "scissors"].sample
    @result = determine_result(@player_move, @computer_move)
    
    render template: "game_templates/play_paper"
  end 

  def lion 
    @player_move = "scissors"
    @computer_move = ["rock", "paper", "scissors"].sample
    @result = determine_result(@player_move, @computer_move)
    
    render template: "game_templates/play_scissors"
  end

  def index
    render template: "game_templates/index"
  end

  private

  def determine_result(player, computer)
    if player == computer
      "We tied!"
    elsif (player == "rock" && computer == "scissors") ||
          (player == "paper" && computer == "rock") ||
          (player == "scissors" && computer == "paper")
      "We won!"
    else
      "We lost!"
    end
  end
end
