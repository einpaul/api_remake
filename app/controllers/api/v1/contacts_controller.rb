module Api
	module V1
		class ContactsController < ApplicationController
			#respond_with :json

			before_action :authenticate_via_access_token
			
			def index 
				@contacts = Contact.all
			end
		
			def create
		    	@contact = Contact.new(contact_params)
		    	@contact.user_id = @user.id
		      if @contact.save
		        redirect_to @contact, notice: 'Contact was successfully created.' 
		      else
		        render :new 
		      end
  		end

			def show
				@contact = @user.contacts.find(params[:id])
			end





			private 

			def authenticate_via_access_token
				@user = User.find_by_access_token(params[:access_token])
				head :unauthorized if !@user
			end


		end

	end
end
