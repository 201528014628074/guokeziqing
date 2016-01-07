class HomepageController < ApplicationController
  def index
    @user_id = params[:id] || session[:user_id]
    session[:user_id] = @user_id
    #@user_id = 1
    @users = UserInfo.where(:user_login_id => @user_id)
    @all_posts = Post.order(:edit_time).all
    @posts_content = {}
    @groups = {}
    @likes_nums = {}
    @collect_nums = {}
    @comments_nums = {}
    @pro_root = Rails.root.to_s
    @all_posts.each do |post|
      f = File.open(@pro_root + post.context_url, 'r')
      @posts_content[post.id] = f.gets
      @groups[post.id] = GroupInfo.find(post.group_info_id).group_name
      @likes_nums[post.id] = LikePost.where(:post_id => post.id).count
      @collect_nums[post.id] = Collection.where(:post_id => post.id).count
      @comments_nums[post.id] = Comment.where(:post_id => post.id).count
    end
    #@all_posts.each do |post|
      #f = File.open('#{RAILS_ROOT}/app/assets/data/posts/1.txt', 'r')
      #@posts_content.push(f.gets)
    #end
    @user = @users[0]
    @user_info = {}
    @user_info['nick_name'] = @user.nick_name
    @user_info['gender'] = @user.gender
    @user_info['home'] = @user.home_provice + '    ' + @user.home_city
    @user_info['institute'] = Institute.find(@user.institute_id).inst_name
    @user_info['email'] = @user.email
    #@nick_name = user.nick_name
    #@gender = user.gender
    #@home = user.home_provice + '\t' + user.home_city
    #@institute = Institute.where(:id => user.institute_id)
  end
end
