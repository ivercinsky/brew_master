class RecipesController < ApplicationController
  before_action :authenticate_user!
  def index
    @recipes = Recipe.where(:brewmaster_id => current_user)
  end

  def show
  end

  def new
    @recipe = Recipe.new
  end

  def edit
  end

  def create
      @recipe = Recipe.new
      @recipe.brewmaster_id = current_user.id
      @recipe.name = "Receta " + DateTime.now.to_s
      @recipe.save!
      redirect_to action: :index
  end
end
