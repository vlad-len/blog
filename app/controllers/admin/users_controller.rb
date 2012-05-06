class Admin::UsersController < ApplicationController
  #before_filter :authenticate_admin!
  def index
    @user=User.all
  end
  def new
    @user = User.new
  end
  def create
    @user = User.new(params[:user])
  end
  def edit
    @user=User.find(params[:id])
  end
  def show
    @user=User.find(params[:id])
  end
  def update
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])
    redirect_to admin_users_path(@user)
  end
end
