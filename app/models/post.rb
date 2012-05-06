class Post < ActiveRecord::Base

  has_many :tweets  , :dependent=>:destroy
  validates :title, :presence =>  true
  validates  :body,  :presence => true
end
