class Institute < ActiveRecord::Base
  has_many :user_infos, :dependent => :destroy
end
