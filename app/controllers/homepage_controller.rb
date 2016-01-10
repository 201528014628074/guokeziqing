class HomepageController < ApplicationController
  def index
    @user_id = params[:id] || session[:user_id]
    session[:user_id] = @user_id
    @searchwords = params[:searchwords] || session[:searchwords] || ''
    session[:searchwords] = @searchwords
    @users = UserInfo.where(:user_login_id => @user_id)
    if @searchwords == ''
      @all_posts = Post.order(:edit_time).where(:is_notice => false)
    else
      sql_string = 'select * from posts where title LIKE \'%' + @searchwords + '%\''
      @all_posts = Post.order(:edit_time).find_by_sql(sql_string)
    end
    @posts_content = {}
    @groups = {}
    @likes_nums = {}
    @collect_nums = {}
    @comments_nums = {}
    @pro_root = Rails.root.to_s
    @all_posts.each do |post|
      if post.is_notice == true
        next
      end
      f = File.open(@pro_root + post.context_url, 'r')
      @posts_content[post.id] = f.gets
      @groups[post.id] = GroupInfo.find(post.group_info_id).group_name
      @likes_nums[post.id] = LikePost.where(:post_id => post.id).count
      @collect_nums[post.id] = Collection.where(:post_id => post.id).count
      @comments_nums[post.id] = Comment.where(:post_id => post.id).count
    end
    @user = @users[0]
    @user_info = {}
    @user_info['nick_name'] = @user.nick_name
    @user_info['gender'] = @user.gender
    @user_info['home'] = @user.home_provice + '    ' + @user.home_city
    @user_info['institute'] = Institute.find(@user.institute_id).inst_name
    @user_info['email'] = @user.email
    get_hot_posts
  end

  def get_hot_posts
    @hot_posts = {}
    @hot_posts_id = Array.new
    @hot_posts_title = {}
    posts_score = Array.new
    posts_id = Array.new
    posts_title = {}
    posts = Post.all
    posts.each do |post|
      if post.is_notice == true
        next
      end
      end_time = Time.now
      start_time = Time.new(post.edit_time.to_s)
      time_diff = (end_time - start_time)/3600/24
      if time_diff < 11
        likes_nums = LikePost.where(:post_id => post.id).count
        collect_nums = Collection.where(:post_id => post.id).count
        comments_nums = Comment.where(:post_id => post.id).count
        post_score = likes_nums + collect_nums + comments_nums + 30.0/(time_diff + 1)
        posts_score.push(post_score)
        posts_id.push(post.id)
        posts_title[post.id] = post.title
      end
    end
    for i in 0..5
      max_index = posts_score.index posts_score.max
      @hot_posts[posts_id[max_index]] = posts_score[max_index]
      @hot_posts_id.push(posts_id[max_index])
      @hot_posts_title[posts_id[max_index]] = posts_title[posts_id[max_index]]
      posts_score.delete_at(max_index)
      posts_id.delete_at(max_index)
    end
  end
end
