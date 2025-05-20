class DiceController < ApplicationController
  def home
    render({ :template => "dice_templates/home" })
  end

  def roll
    @num_dice = params.fetch("num_dice").to_i
    @num_sides = params.fetch("num_sides").to_i
    @rolls = Array.new(@num_dice) { rand(1..@num_sides) }

    render({ :template => "dice_templates/roll" })
  end
end
