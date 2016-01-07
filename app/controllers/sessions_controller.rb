class SessionsController < ApplicationController
  def new
  end

  def create
  	user=User.find_by(login: params[:session][:login])
  	p user
  	if user && user.pwd == params[:session][:password]
  		p "="*100
  		session[:user_id]= user.id #log_in user
  		redirect_to user
  	else
  		p ". "*100
  		flash.now[:danger] = 'Merci de ré-essayer'
	  	render 'new'
	  end
  end
end
