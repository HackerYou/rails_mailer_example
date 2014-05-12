class NewsletterJob
  include SuckerPunch::Job

  def perform(users)
    users.each {|user| UserMailer.newsletter_email(user).deliver }
  end
end
