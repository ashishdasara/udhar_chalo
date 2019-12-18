class ApplicationController < ActionController::Base
  before_action: check_if_logged_in

  private

  def check_if_logged_in
    unless current_user
      return redirect_to new_sessions_path
    end
  end

  def current_user
    @current_user ||= Manager.find(session[:user_id])
  end
end
