class ApplicationController < ActionController::API
  def user_payload(user)
    {user_id: user.id}
  end

  def encode_token(user)
    JWT.encode user_payload(user), 'this.cook()', 'HS256'
  end
end
