class OrdersController < ApplicationController
  layout "frontend"
  before_action :authenticate_frontend_user!, only: [ :new, :create, :show ]
  def new
  end

  def create
  end

  def show
  end
end
