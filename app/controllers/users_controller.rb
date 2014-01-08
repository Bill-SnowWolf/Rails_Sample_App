class UsersController < ApplicationController
  def new
  end
  def index
  	puts "[Log] UsersController -> index"
  end

  def show
  	puts "[Log] UsersController -> show #{params[:id]}"
  	@user = User.find(params[:id])
  end

  def registered
  	puts "[Log] UsersController -> registered"
  	@user = User.find(3)
  	render :json=>@user, :text=>"Hello I'm api"
  end
end
