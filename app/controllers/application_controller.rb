class ApplicationController < ActionController::Base
  before_action:set_current_user
# before_action :set_current_user:
#before_action is a Rails callback that runs a specified method before executing any action in the controller.

  def set_current_user
    if session[:user_id]
      Current.user=User.find_by(id:session[:user_id])
    end
  end

  #begin The ! at the end of the method name (require_user_logged_in!) suggests that this method performs
  # a critical or impactful action. It indicates that the method is enforcing a requirement or performing
  # an important check.
  def require_user_logged_in!
    redirect_to sign_in_path, alert: 'You must be signed in to do that.' if Current.user.nil?
  end

end

#the ? character is commonly used in method names to indicate that the method returns a boolean value,
#often answering a question about the state of the object. This is known as a predicate method.

=begin
1.
class Cart
  def empty?
    items.empty?
  end
end
empty?: Returns true if the items array is empty.

2.
class Article
  def published?
    !published_at.nil?
  end
end
published?: Returns true if the published_at attribute is not nil, indicating that the article has been
 published.

 3.
 class User
  def adult?
    age >= 18
  end
end
adult?: Returns true if the user's age is 18 or older.
=end
