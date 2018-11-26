class ApplicationController < ActionController::Base
	before_action :authenticate_user!
	before_action :authenticate_administrator!
	protect_from_forgery with: :exception
end
