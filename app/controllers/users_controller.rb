class UsersController < ApplicationController
  def create
    Event.publish(name: params[:user][:name])

    redirect_to users_url
  end
end
