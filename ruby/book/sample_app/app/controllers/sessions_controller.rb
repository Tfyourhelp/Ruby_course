class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase) # cua session tren trang web (view truyen ve)
    if user && user.authenticate(params[:session][:password])
      # Log the user in and redirect to the user's show page.
      log_in(user) # log_in(user) (helper)  
      redirect_to user #(user_url(@user))
    else
      # Create an error message.
      flash.now[:danger] = 'Invalid email/password combination' # Not quite right!
      render 'new'
      #redirect_to sessions_new_path
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
