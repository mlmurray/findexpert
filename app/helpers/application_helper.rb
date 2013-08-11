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
    :email
  end

  def mail_resource
    @mail_resource ||= Mail.new
  end

  #def devise_mapping
  #  @devise_mapping ||= Devise.mappings[:user]
  #end
	
end
