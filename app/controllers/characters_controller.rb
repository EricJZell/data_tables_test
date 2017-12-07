class CharactersController < ApplicationController
  def index
    binding.pry
    @characters = Character.all
  end
end
