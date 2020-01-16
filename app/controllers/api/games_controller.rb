class Api::GamesController < ApplicationController
  def yer_name
    @yer_name = params["name"].upcase
    render 'yer_name.json.jb'
  end 

  def start_a
    @name = params["name"]

    if @name[0].downcase == "a"
      @message = "Hey, your name starts with the first letter of the alphabet!"
    end 

    render 'start_a.json.jb'
  end

  def guess_query
    @guess = params[:guess].to_i
    hidden_number = 42

    if @guess > hidden_number
      @message = "Whoa, too high. Go lower."
    elsif @guess < hidden_number
      @message = "Who, too low. Go higher."
    else
      @message = "You guessed the secret number!"
    end 

    render 'guess_query.json.jb'
  end

  def segment_params_action
    @message = params[:this_is_also_a_variable]
    render 'segment_params_view.json.jb'  
  end 
 
  def form_params_action
    @message = params[:message]
    render 'form_params_view.json.jb'
  end 

  # def guess_query
  #   @guess = params[:guess].to_i
  #   hidden_number = 42

  #   if @guess > hidden_number
  #     @message = "Whoa, too high. Go lower."
  #   elsif @guess < hidden_number
  #     @message = "Who, too low. Go higher."
  #   else
  #     @message = "You guessed the secret number!"
  #   end 

  #   render 'guess_query.json.jb'
  end
