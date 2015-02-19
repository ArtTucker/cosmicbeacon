class MessagesController < ApplicationController

	before_action :authenticate_user!

	def index
		@messages = Message.all

		render :index
	end

	def new
		@planet = Planet.find(params[:planet_id])
		@message = Message.new

		render :new
	end

	def create
		new_message = params.require(:message).permit(:content, :user_id, :planet_id)
		message = Message.create(new_message)		
		redirect_to '/messages'
	end

	def show
		id = params[:id]
		@message = Message.find(id)		
		render :show
	end

	# require 'time'
	# def years_since(years)
	# 	advance(:years => years)
	# end
end
