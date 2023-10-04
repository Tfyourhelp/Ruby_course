class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase) # cua session tren trang web (view truyen ve)
    if user && user.authenticate(params[:session][:password]) # &. giống && khác là khi có giá trị nil thì k bị lôi (user&.authenticate(params[:session][:password]))
      # Log the user in and redirect to the user's show page.
      log_in(user) # log_in(user) (helper) ---> (session[:user_id) = user.id)
      params[:session][:remember_me] == '1' ? remember(user) : forget(user) #  nếu remember_me = 1 thì nhớ mk else thì forget mk ( viết tắt trang 524)
# gán cookies[:user_id] =//remember : tao remember_token dua vao cot remember_digest va cookies[remember_token]
# forget : cho cot remember_digest = nil
      redirect_back_or user #(user_url(@user))
    else
      # Create an error message.
      flash.now[:danger] = 'Invalid email/password combination' # Not quite right!
      render 'new'
      #redirect_to sessions_new_path
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
