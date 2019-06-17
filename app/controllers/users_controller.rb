require_relative "./concerns/avatars_array"

class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users, include: [:favorites, :notes]
  end

  def create
    if params[:password] === params[:passwordConfirm]
      @user = User.create(user_params)
      if @user.valid?
        @user.update(image: random_avatar)
        render json: { token: encode_token(@user) }
      else
        render json: { error: @user.errors.full_messages }
      end
    else
      render json: { error: "Passwords don't match, bro. 👨‍🍳🔪" }
    end
  end


  def profile
    token = request.headers[:Authorization]
    decoded_token = JWT.decode token, "this.cook()", true, { algorithm: 'HS256' }
    user_id = decoded_token[0]["user_id"]
    @user = User.find(user_id)

    render json: @user, include: [:favorites, :notes]
  end


  private

  def user_params
    params.permit(:username, :password)
  end
end
