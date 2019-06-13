class UsersController < ApplicationController
  def create
    if params[:password] === params[:passwordConfirm]
      @user = User.create(user_params)

      if @user.valid?
        render json: { token: encode_token(@user) }
      else
        render json: { error: @user.errors.full_messages }
      end
    else
      render json: { error: "Passwords don't match, bro. 👨‍🍳🔪" }
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
