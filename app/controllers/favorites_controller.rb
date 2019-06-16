class FavoritesController < ApplicationController

  def index
    @favorites = Favorite.all
    render json: @favorites
  end


  def create
    @user = User.find(params[:user_id])

    if @user.favorites.pluck(:recipe_id).exclude?(params[:recipe_id].to_i)
      @favorite = Favorite.create(favorite_params)
      render json: @favorite
    end
  end


  def destroy
    Favorite.find_by(user_id: params[:user_id], recipe_id: params[:recipe_id]).destroy
  end


  private

  def favorite_params
    params.permit(:user_id, :recipe_id)
  end
end
