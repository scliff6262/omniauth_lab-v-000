require 'pry'

class SessionsController < ApplicationController

  def create
    fb_email = request.env["omniauth.auth"]["info"]["email"]
    fb_uid = request.env["omniauth.auth"]["uid"]
    user = User.find_or_create_by_fb_email(fb_email, fb_uid)
    binding.pry
    session[:user_id] = user.id
  end

end
