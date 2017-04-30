class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include ActionController::Helpers
  include Auth
  helper_method :current_user, :current_admin
end
