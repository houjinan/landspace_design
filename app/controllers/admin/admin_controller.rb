module Admin
  class AdminController < ApplicationController

    before_action :authenticate_user!
    layout 'admin_layout'
  end
end
