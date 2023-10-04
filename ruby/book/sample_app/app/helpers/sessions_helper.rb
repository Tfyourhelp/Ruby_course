module SessionsHelper
  # Logs in the given user.
  def log_in(user)
    session[:user_id] = user.id
  end

  def remember(user)
    user.remember # chay ham remember trong class User trong model User
# >> user.id
# => 3
# >> cookies.permanent.encrypted[:user_id]  # biến cookies của sever sau khi qua encrypt nó đã đc giải mã
# => 3
# >> cookies.encrypted[:user_id] # sách nói thằng này tự decrypt user_id cookies
# => 3
# >> cookies.permanent[:user_id]
# => "2Xot9HtOCVKE55nEgNa1UQrvoZB4CWy/FevwVo0CMsG19+gcaXYMpJ8aQrdFRUVtpznL4X2cvKmNhVT1dYGv--C68gHSLQZtElvni9--242UjHj4AS8JMH4f22o/XA=="
    cookies.permanent.encrypted[:user_id] = user.id # luu user.id sau do encrypt dua vao cookie  dua len web ( neu k co .encrypt thi se dua user_id = 3 len web)  
    cookies.permanent[:remember_token] = { value: user.remember_token, expires: 20.minutes.from_now.utc } # luu remember_token tao ra dua vao cookie dua len web
  end

  # Returns the current logged-in user (if any)
  def current_user
    if session[:user_id] # session la file luu tren db trong luc session con active
      @current_user ||= User.find_by(id: session[:user_id])
    elsif cookies.encrypted[:user_id]
      user = User.find_by(id: cookies.encrypted[:user_id])
      if user && user.authenticated?(cookies[:remember_token])
        log_in(user)
        @current_user = user
      end
    end 
  end
# Khi bat trang web len bat dau login --> session[:user_id] = 3 (neu tick vao checkbox thi cookies.encrypted[:user_id] = 3)
# --> trong qua trinh su dung browser thi no se chay if cua session, khi tat browser di thi session mat , cookie con
# thi khi bật lai thi browser cookie con sẽ set session[:user_id] = 3 de web su dung session --> tương tự đến khi nào cookie mất (logout hoặc expired)

  def logged_in? # dang kiem tra xem da dang nhap chua --> current_user = user (object) --> logged_in = true
    !current_user.nil? 
  end

  def corrected_user?
    @user = User.find(params[:id])
    redirect_to(root_url) unless @user == current_user
  end

  def log_out 
    forget(current_user)
    session.delete(:user_id)
    @current_user = nil
  end
# set cột remember_digest = nil 
# xóa cookies (user_id,remember_token )
# xóa session
# xóa current_user

  def forget(user)
    user.forget # set cột remember_digest = nil
    cookies.delete(:user_id)
    cookies.delete(:remember_token)
  end

  def current_user?(user)
    user && user == current_user
  end

# Redirects to stored location (or to the default).
# On subsequent login attempts, the forwarding URL should revert to the default

  def redirect_back_or(default) # nếu có forwarding_url thì sang user nếu k có thì auto redirect sang user 
    redirect_to(session[:forwarding_url] || default)
    session.delete(:forwarding_url)
  end

# Stores the URL trying to be accessed.
  def store_location
    session[:forwarding_url] = request.original_url if request.get?
  end
end
