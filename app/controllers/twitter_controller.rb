class TwitterController < ApplicationController

  def index
  end

  def authenticate
    auth_hash = request.env['omniauth.auth']
    cookies[:twitter_token] = {
        value: 'token',
        expires: 1.year.from_now
    }
  end
end
