module Api
	module V2
		class ContactsController < ApplicationController


			before_action :authenticate_via_api_key

			def index
				@contacts = Contact.where('mobile = ?', params[:mobile])
			end




			private

			def authenticate_via_api_key
			
			if params[:api_key] == "secret123"
				return true
			else
				head :unauthorized
			end
		end



		




		end
	end
end