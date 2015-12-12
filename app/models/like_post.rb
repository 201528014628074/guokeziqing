class LikePost < ActiveRecord::Base
  belongs_to :user_login
  belongs_to :post
end
