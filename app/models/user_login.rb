class UserLogin < ActiveRecord::Base
  has_many :collections, :dependent => :destroy
  has_many :comments, :dependent => :destroy
  has_many :candidate_groups, :dependent => :destroy
  has_many :group_infos, :dependent => :destroy
  has_many :like_posts, :dependent => :destroy
  has_many :posts, :dependent => :destroy
  has_many :group_members, :dependent => :destroy
  has_many :group_infos, :dependent => :destroy
  has_one :user_info, :dependent => :destroy
end
