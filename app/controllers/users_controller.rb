class UsersController < ApplicationController
  
	def show
		@user=User.find(params[:id])
		
	end
  	def new
  		@user=User.new
  	end

  	def create
    	@user = User.new(params[:user])
    	if @user.save
        flash[:success]="Welcome to the Sample App!"
        redirect_to @user
      else
          # flash[:error]="failed!"
      		render 'new'
          # redirect_to signup_path
    	end
  	end
end
