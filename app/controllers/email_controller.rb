class EmailController < ApplicationController
  	attr_accessor :object, :body

    def index
    	@email = Email.new
  		@emails = Email.all
    end

    def create 
    	@email = params.require(:email).permit(:object, :body)
    end

    def show
  		@email = Email.find(params[:id])
    end

end
