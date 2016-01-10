# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

adm1 = AdmLogin.create(:user_id => 'adm1', :password => '123')
user1 = UserLogin.create(:user_id => 'user1', :password => '123')
user2 = UserLogin.create(:user_id => 'user2', :password => '123')

institute1 = Institute.create(:inst_name => '自动化研究所', :provice => '北京', :city => '海淀')
institute2 = Institute.create(:inst_name => '软件所', :provice => '北京', :city => '海淀')

user1_info = UserInfo.create(:user_login_id => user1.id, :gender => '男', :nick_name => 'fengling', :birthday =>Time.new, :email => '975706314@qq.com', :image_url => './user1_info_image.jpg', :institute_id => institute1.id, :home_provice => '湖南', :home_city => '岳阳')
user2_info = UserInfo.create(:user_login_id => user2.id, :gender => '女', :nick_name => '风铃', :birthday =>Time.new, :email => '975706314@qq.com', :image_url => './user2_info_image.jpg', :institute_id => institute2.id, :home_provice => '湖南', :home_city => '岳阳')

group1 = GroupInfo.create(:group_name => '羽毛球', :user_login_id => user1.id, :create_time => Time.new, :image_url => './group1_info_image.jpg')
group2 = GroupInfo.create(:group_name => '随机过程', :user_login_id => user2.id, :create_time => Time.new, :image_url => './group2_info_image.jpg')

post1 = Post.create(:group_info_id => group1.id, :title => '羽毛球考试内容', :context_url => '/app/assets/data/posts/1.txt', :user_login_id => user2.id, :edit_time => Time.new, :is_notice => false)
post2 = Post.create(:group_info_id => group2.id, :title => '随机过程考试内容', :context_url => '/app/assets/data/posts/2.txt', :user_login_id => user1.id, :edit_time => Time.new, :is_notice => false)
post3 = Post.create(:group_info_id => group1.id, :title => '羽毛球考试内容1', :context_url => '/app/assets/data/posts/3.txt', :user_login_id => user2.id, :edit_time => Time.new, :is_notice => false)
post4 = Post.create(:group_info_id => group2.id, :title => '随机过程考试内容1', :context_url => '/app/assets/data/posts/4.txt', :user_login_id => user1.id, :edit_time => Time.new, :is_notice => false)
post5 = Post.create(:group_info_id => group1.id, :title => '羽毛球考试内容2', :context_url => '/app/assets/data/posts/5.txt', :user_login_id => user2.id, :edit_time => Time.new, :is_notice => false)
post6 = Post.create(:group_info_id => group2.id, :title => '随机过程考试内容2', :context_url => '/app/assets/data/posts/6.txt', :user_login_id => user1.id, :edit_time => Time.new, :is_notice => false)
post7 = Post.create(:group_info_id => group1.id, :title => '羽毛球考试内容3', :context_url => '/app/assets/data/posts/7.txt', :user_login_id => user2.id, :edit_time => Time.new, :is_notice => false)
post8 = Post.create(:group_info_id => group2.id, :title => '随机过程考试内容3', :context_url => '/app/assets/data/posts/8.txt', :user_login_id => user1.id, :edit_time => Time.new, :is_notice => false)
post9 = Post.create(:group_info_id => group1.id, :title => '羽毛球考试内容4', :context_url => '/app/assets/data/posts/9.txt', :user_login_id => user2.id, :edit_time => Time.new, :is_notice => false)
post10 = Post.create(:group_info_id => group2.id, :title => '随机过程考试内容4', :context_url => '/app/assets/data/posts/10.txt', :user_login_id => user1.id, :edit_time => Time.new, :is_notice => false)
#post11 = Post.create(:group_info_id => group1.id, :title => '羽毛球考试内容5', :context_url => '/app/assets/data/posts/11.txt', :user_login_id => user2.id, :edit_time => Time.new, :is_notice => false)
#post12 = Post.create(:group_info_id => group2.id, :title => '随机过程考试内容5', :context_url => '/app/assets/data/posts/12.txt', :user_login_id => user1.id, :edit_time => Time.new, :is_notice => false)
#post13 = Post.create(:group_info_id => group1.id, :title => '羽毛球考试内容6', :context_url => '/app/assets/data/posts/13.txt', :user_login_id => user2.id, :edit_time => Time.new, :is_notice => false)
#post14 = Post.create(:group_info_id => group2.id, :title => '随机过程考试内容6', :context_url => '/app/assets/data/posts/14.txt', :user_login_id => user1.id, :edit_time => Time.new, :is_notice => false)
#post15 = Post.create(:group_info_id => group1.id, :title => '羽毛球考试内容7', :context_url => '/app/assets/data/posts/15.txt', :user_login_id => user2.id, :edit_time => Time.new, :is_notice => false)
#post16 = Post.create(:group_info_id => group2.id, :title => '随机过程考试内容7', :context_url => 's/app/assets/data/posts/16.txt', :user_login_id => user1.id, :edit_time => Time.new, :is_notice => false)


comment1 = Comment.create(:post_id => post1.id, :edit_time => Time.new, :context_url => '#{RAILS_ROOT}/app/assets/data/comments/1.txt', :user_login_id => user1.id)
comment2 = Comment.create(:post_id => post2.id, :edit_time => Time.new, :context_url => '#{RAILS_ROOT}/app/assets/data/comments/2.txt', :user_login_id => user2.id)

like_post1 = LikePost.create(:user_login_id => user1.id, :post_id => post1.id)
like_post2 = LikePost.create(:user_login_id => user2.id, :post_id => post2.id)

collection1 = Collection.create(:user_login_id => user1.id, :post_id => post1.id)
collection2 = Collection.create(:user_login_id => user2.id, :post_id => post2.id)

group_member1 = GroupMember.create(:group_info_id => group1.id, :user_login_id => user1.id)
group_member2 = GroupMember.create(:group_info_id => group2.id, :user_login_id => user2.id)

condidate_group1 = CondidateGroup.create(:group_name => '乒乓球', :user_login_id => user1.id, :create_time => Time.new, :image_url => './condidate_group1_image.jpg')
condidate_group2 = CondidateGroup.create(:group_name => '模式识别', :user_login_id => user2.id, :create_time => Time.new, :image_url => './condidate_group2_image.jpg')



