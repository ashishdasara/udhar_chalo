class SessionsController < ApplicationController
  skip_before_action :check_if_logged_in

  def new
  end

  def create
  end

  def destroy
  end
end
