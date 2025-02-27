class SessionsController < ApplicationController
  def index
    redirect_to '/login'
  end

  def new
  end

  def create
    if params[:name] == nil || params[:name] == ''
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to '/welcome'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/login'
  end
end
