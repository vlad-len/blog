class Tweet < ActiveRecord::Base
  belongs_to :post
end
