module ApplicationHelper
  def show_login_link(user)
    if user
      link_to "Login", login_path
    else
      link_to @user.email, logout_path, :method => :delete
    end
  end
end
