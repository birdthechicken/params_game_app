class Api::GamesController < ApplicationController
  def all_caps_action
    @name = params[:name].upcase
    render 'all_caps.json.jbuilder'
  end

  def a_name
    @name = params[:name]
    if @name[0] == "a"
    @message = "Hey, your name starts with the first letter of the alphabet!"
    end
    render 'a_name.json.jbuilder'
  end

  def string_guess
    @guess = params[:guess].to_i
    target_number = 42

    if target_number > @guess
      @message = "Too Low! Trya a higher number"
    elsif target_number < @guess
      @message = "Nice try but you are found lacking! Guess a lower number"
    else
      @message = "You got it"
    end
    render 'string_guess.json.jbuilder'
  end

  def url_guess
    @guess = params[:guess].to_i
    target_number = 42

    if target_number > @guess
      @message = "Too Low! Trya a higher number"
    elsif target_number < @guess
      @message = "Nice try but you are found lacking! Guess a lower number"
    else
      @message = "You got it"
    end
    render 'url_guess.json.jbuilder'
  end

  def form_guess_action
     @guess = params[:guess].to_i
    target_number = 42

    if target_number > @guess
      @message = "Too Low! Trya a higher number"
    elsif target_number < @guess
      @message = "Nice try but you are found lacking! Guess a lower number"
    else
      @message = "You got it"
    end
    render 'form_guess.json.jbuilder'
  end
end
