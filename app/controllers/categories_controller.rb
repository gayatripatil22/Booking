class CategoriesController < ApplicationController
  def index
    @categories= Category.all.order(created_at: :desc)
  end

  def new
    @category =Category.new
  end
  def create
     @category= Category.new(cat_params)
    if @category.save
      redirect_to categories_path
    else
      render :new, status: :unprocessable_entity
    end
  end
end
private

  def cat_params
    params.require(:category).permit(:name)
  end
