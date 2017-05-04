module WikisHelper

  def authorized?(user, wiki)
    user.id == wiki.user_id || user.role == "awesome"
  end

end
