class Current<ActiveSupport::CurrentAttributes
  attribute:user
end

#In Ruby on Rails, ActiveSupport::CurrentAttributes is a special class that allows you to set and
#access global, thread-safe attributes. These attributes are specific to the current request or
#context, making them useful for things like storing the current user across different parts of
#your application.

#Example
# In a controller
#Current.user = @current_user

# In a model or another controller
#puts Current.user.name
