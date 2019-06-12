class AuthController < ApplicationController
  def login
    # params: { username: "", password: "" }
    # find the user by the username
    # authenticate the username
    # "log in the user" -- whatever that means
    @user = User.find_by_username(params[:username])

    if @user && @user.authenticate(params[:password])
      render json: { token: encode_token(@user) }
    else
      render json: { error: "Wrong username or password" }
    end
  end
end
