class Post < ActiveRecord::Base
  has_many :collections, :dependent => :destroy
  has_many :comments, :dependent => :destroy 
  has_many :like_posts, :dependent => :destroy
  belongs_to :group_info
  belongs_to :user_login
end
