class ApplicationController < ActionController::Base

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery 

  # Redirect to the thank you for signing up page after signup.
  def after_sign_up_path_for(resource)
    thankyou_path
  end


end
