class Admin::ApplicationController < ApplicationController
  before_action :current_admin

  layout 'admin'
end
