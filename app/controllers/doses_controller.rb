class DosesController < ApplicationController
  before_action :set_dose, only: [:destroy]
  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @ingredient = Ingredient.find(dose_params["ingredient_id"])
    @dose = Dose.new(cocktail: @cocktail, ingredient: @ingredient, description: dose_params["description"])
    @dose.save
    redirect_to cocktail_path(@cocktail)
  end

  def destroy
    @dose.destroy
    redirect_to cocktail_path(@dose.cocktail)
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end

  def set_dose
    @dose = Dose.find(params[:id])
  end

end
