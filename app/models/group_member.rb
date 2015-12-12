class GroupMember < ActiveRecord::Base
  belongs_to :group_info
  belongs_to :user_login
end
