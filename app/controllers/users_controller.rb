class UsersController < ApplicationController
  def create
    @user = User.create(user_params)

    if @user.valid?
      render json: { token: encode_token(@user) }
    else
      render json: { error: @user.errors.full_messages }
    end
  end


  def profile
    @user = User.find(user_id)

    render json: @user
  end


  private

  def user_params
    params.permit(:username, :password)
  end
end
