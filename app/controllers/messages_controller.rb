class MessagesController < ApplicationController

	def index
		@messages = Message.all
		render :index
	end

	def new
		render :new
		
	end
end
