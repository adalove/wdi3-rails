module ApplicationHelper
  def intellinav
    if @auth.present?
      link_to(@auth.email, login_path, :method => :delete, :class => 'button tiny')
    else
      link_to('Sign in', '#', :class => 'button tiny')
    end
  end
end