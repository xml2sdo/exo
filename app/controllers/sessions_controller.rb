class SessionsController < ApplicationController
  def new
  end

  def create
  	user=User.find_by(login: params[:session][:login].downcase)
  	if user && user.pwd == params[:session][:password]
      log_in user
      redirect_to user
  	else
  		flash.now[:danger] = 'Merci de ré-essayer'
	  	render 'new'
	  end
  end

  def destroy
      log_out
      redirect_to root_url
  end

private



end
