# frozen_string_literal: true
class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update, :destroy]
  before_action :check_admin, only: [:create, :destroy]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save!

    redirect_to user_path(@user)
  end

  def edit
  end

  def update
    @user.assign_attributes(user_params)
    @user.save!

    redirect_to user_path(@user)
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  private

  def check_admin
    # Use admin string maybe
    redirect_to :unauthorized if current_user.role != ROLES[0]
  end

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
