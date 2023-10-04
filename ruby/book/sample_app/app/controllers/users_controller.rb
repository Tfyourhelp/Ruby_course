class UsersController < ApplicationController
  before_action :logged_in_user, only: [:index,:edit, :update, :destroy]
# trang user/:id ai cũn vào dc(chưa đăng nhập hay đăng nhập r)
# bị 1 vấn đề  trước khi làm ch10 , đó là đăng nhập tk1 xong sửa path thành user/2/edit --> thì edit dc tk2 --> sửa : tk1 đăng nhập vào users/2/edit thì sẽ bị redirect_to(root_user) (corected_user)
# còn nút setting phía bên trên thì auto vào edit của user của tk đăng nhập bởi vì đường link edit_user_path(current_user = user.id(id của tk đnhập))
  before_action :correct_user, only: [:edit, :update]
  before_action :admin_user, only: [:destroy]
  before_action :find_id, only: [:show, :edit, :update]

  def index
    @users =User.page(params[:page])  #.per(5) 
  end

  def show
    # @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      # Handle a successful save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user # (user_url(@user))
    else
      render 'new' # new la action new trong cung controller (User) 
# --> render tiếp new.html.erb --> hiện ra lỗi nếu form trc bị lỗi và hiện ra form để điền lại
    end
  end

  def edit
    # @user = User.find(params[:id])
  end

  def update
    # @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
# render edit la action edit(quan trọng là view/users/edit) trong cung controller (User) 
# --> render tiếp edit.html.erb --> hiện ra lỗi nếu form trc bị lỗi và hiện ra form để điền lại    
    end
  end

  def destroy
    adsfadf
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    fadfadf
    redirect_to users_url
  end

  private 
  
  def admin_user # trường hợp k phải hacker k phải admin nhưng hacker vẫn tìm cách delete dược
    redirect_to(root_url) unless current_user.admin?
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def logged_in_user
    unless logged_in? # --> nếu chưa đăng nhập --> chưa có session[:user_id] --> current_user = nil
      store_location
# --> nếu chưa đăng nhập thì lưu get request , đăng nhập xong thì sẽ thực hiện gest request đó 
      flash[:danger] = "Please log in"
      redirect_to login_url
    end
  end

  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless current_user?(@user) #@user == current_user
# nếu như truy cập vào trang user/:id/edit k dung user tương ứng thì nó sẽ trả về trang user/:id rồi bỏ qua hành động edit , update
  end

  def find_id
    begin
      @user = User.find(params[:id])
    rescue
      flash[:danger] = "User not found"
      redirect_to root_path 
    end 
  end
end
