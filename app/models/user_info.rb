class UserInfo < ActiveRecord::Base
  belongs_to :user_login
  belongs_to :institute
end
