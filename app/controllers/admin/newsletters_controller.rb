class Admin::NewslettersController < ApplicationController
  def create
    users = User.all

    NewsletterJob.new.async.perform(users)

    flash[:notice] = "Newsletter Sent!"

    redirect_to admin_newsletter_path
  end
end
