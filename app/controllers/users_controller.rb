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
    token = request.headers[:Authorization]
    decoded_token = JWT.decode token, "this.cook()", true, { algorithm: 'HS256' }
    user_id = decoded_token[0]["user_id"]
    @user = User.find(user_id)

    render json: {user: @user, favorites: @user.favorites.pluck("recipe_id"), notes: @user.notes}
  end


  private

  def user_params
    params.permit(:username, :password)
  end
end
