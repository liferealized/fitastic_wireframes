class RecipesController < ApplicationController
  
  def show
    @id = params[:id]
  end
  
  def edit
    @id = params[:id]
  end
  
end
