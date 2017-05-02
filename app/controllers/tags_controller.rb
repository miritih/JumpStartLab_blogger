class TagsController < ApplicationController
  before_filter :require_login, only: [:destroy]

  private
  def require_login
    unless logged_in?
      redirect_to login_path
    end
  end
end
