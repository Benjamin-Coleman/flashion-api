class Api::V1::UsersController < ApplicationController
	before_action :authorized, only: [:show]

  def create
    @user = User.new(username: params[:username], password:params[:password], email:params[:email])
    if @user.save
      payload = {user_id: @user.id}

      render json: {user: @user, jwt: issue_token(payload), success: "Welcome #{@user.username}"}
    else
      render json: @user.errors.messages
    end
  end

  def show
    render json: {user: current_user, lookbooks: current_user.lookbooks}
  end


end