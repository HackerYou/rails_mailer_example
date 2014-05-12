class UserMailer < ActionMailer::Base
  default from: "bradleyrobertson@gmail.com"

  def newsletter_email(user)
    @user = user
    @posts = Post.last(3)

    mail to: user.email, subject: "You so awesome!"
  end
end
