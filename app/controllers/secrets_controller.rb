class SecretsController < ApplicationController
  before_action :require_login

  def show
  end

  private

  def require_login
    if current_user == nil
      redirect_to login_path
    end
  end

end
