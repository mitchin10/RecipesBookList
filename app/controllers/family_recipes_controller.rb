class FamilyRecipesController < ApplicationController
  before_action :set_family_recipe, only: [:show, :edit, :update, :destroy]

  # GET /family_recipes
  # GET /family_recipes.json
  def index
    @family_recipes = FamilyRecipe.all
  end

  # GET /family_recipes/1
  # GET /family_recipes/1.json
  def show
  end

  # GET /family_recipes/new
  def new
    @family_recipe = FamilyRecipe.new
  end

  # GET /family_recipes/1/edit
  def edit
  end

  # POST /family_recipes
  # POST /family_recipes.json
  def create
    @family_recipe = FamilyRecipe.new(family_recipe_params)

    respond_to do |format|
      if @family_recipe.save
        format.html { redirect_to @family_recipe, notice: 'Family recipe was successfully created.' }
        format.json { render :show, status: :created, location: @family_recipe }
      else
        format.html { render :new }
        format.json { render json: @family_recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /family_recipes/1
  # PATCH/PUT /family_recipes/1.json
  def update
    respond_to do |format|
      if @family_recipe.update(family_recipe_params)
        format.html { redirect_to @family_recipe, notice: 'Family recipe was successfully updated.' }
        format.json { render :show, status: :ok, location: @family_recipe }
      else
        format.html { render :edit }
        format.json { render json: @family_recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /family_recipes/1
  # DELETE /family_recipes/1.json
  def destroy
    @family_recipe.destroy
    respond_to do |format|
      format.html { redirect_to family_recipes_url, notice: 'Family recipe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_family_recipe
      @family_recipe = FamilyRecipe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def family_recipe_params
      params.require(:family_recipe).permit(:title, :category, :short_description, :country, :long_description)
    end
end
