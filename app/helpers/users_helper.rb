module UsersHelper
  def postCount()
    if @user.posts.count < 1
      "no posts"
    else
      pluralize(@user.posts.count, 'post')
      pluralize(@user.comments.count, 'comment')
    end
    if @user.comments.count < 1
      'no comments'
    else
      pluralize(@user.comments.count, 'comment')
    end
  end
end
