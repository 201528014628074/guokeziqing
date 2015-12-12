class GroupInfo < ActiveRecord::Base
  belongs_to :user_login
  has_many :posts, :dependent => :destroy
  has_many :group_members, :dependent => :destroy
end
