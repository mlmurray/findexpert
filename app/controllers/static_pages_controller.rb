class StaticPagesController < ApplicationController

  # Redirect to the thank you for signing up page after signup.
  def after_sign_up_path_for(resource)
    thankyou_path
  end

  def thankyou
  end

  def home
  end

  def about
  end

  def profile_expert
  end

  def dashboard_expert
  end

  def dashboard_client
  end

end
