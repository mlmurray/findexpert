module ApplicationHelper

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
	
  def mail_resource_name
    :ourmail
  end

  def mail_resource
    @ourmail_resource ||= Ourmail.new
  end

  #def devise_mapping
  #  @devise_mapping ||= Devise.mappings[:user]
  #end
	
end
