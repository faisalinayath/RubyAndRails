class PasswordResetsController<ApplicationController
  def new

  end

  def create
    @user=User.find_by(email:params[:email])
    if @user.present?
      puts 'here'
      PasswordMailer.with(user:@user).reset.deliver_now
    end
    redirect_to root_path,notice:"if an account with that email is found in our database, we have sent a link to reset your password"
  end

  def edit

  end

  def update

  end
end
