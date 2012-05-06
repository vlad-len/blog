class ProfilesController < ApplicationController

  def edit
  @user=User.find(current_user[:id])
  end
    def update
      @user = User.find(current_user[:id])
      @user.update_attributes(params[:user])
      @user.save
      redirect_to posts_path(@post)
    end
end
