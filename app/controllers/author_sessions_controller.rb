class AuthorSessionsController < ApplicationController
	

	def new 
	end

	def create
		if login(params[:email], params[:password])
			redirect_back_or_to(articles_path, notice: 'Logged in successfully.')
		else
			flash.now.alert = "Login failed."
			redirect_back_or_to(articles_path, notice: "Sorry, something went wrong.")
		end
	end

	def destroy 
		logout
		redirect_to(articles_path, notice: 'Logged out!')
	end
end
