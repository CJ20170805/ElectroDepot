class Admin::DashboardController < ApplicationController
  layout "admin"
  before_action :authenticate_user!
  before_action :authorize_admin
  def index
  end

  private

  def authorize_admin
    redirect_to root_path, alert: 'Access Denied' unless current_user&.admin?
  end
end
