class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  mount_uploader :avatar, AvatarUploader
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :avatar

 #has_attached_file :avatar,:styles => { :medium => "300x300>", :thumb => "100x100>" }

end
