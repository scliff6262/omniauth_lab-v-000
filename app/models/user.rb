class User < ActiveRecord::Base
  #has_secure_password

  def self.find_or_create_by_fb_email(fb_email, fb_uid)
    user = self.find_by(email: fb_email)
    if user
      return user
    else
      binding.pry
      user = self.create(email: fb_email, uid: fb_uid)
    end
  end

end
