class UsersController < ApplicationController

  before_filter :authenticate  , :except => [:create , :new , :show]
  before_filter :correct_user  , :only   => [:edit , :update]
  before_filter :admin_user    , :only   => :destroy 

  def index
   # @users = User.all
    @users = User.paginate(:page => params[:page] , :per_page => 20 )
  end

 # def home
 # end

  def new
    @user = User.new
  end
  
  def  edit
  end
  
  def update
    if @user.update_attributes(params[:user])
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end        
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "Sign up successfull"
      redirect_to @user
    else
      render 'new'
    end
  end

  def destroy 
    User.find(params[:id]).destroy
    flash[:success] = "User destroyed "
    redirect_to users_path
  end  
        
  
private

  def correct_user
    @user = User.find(params[:id]) 
    redirect_to root_path unless current_user?(@user)
  end     

  def admin_user
    redirect_to root_path unless current_user.admin?
  end
  
end
