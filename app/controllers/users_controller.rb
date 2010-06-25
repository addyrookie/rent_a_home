class UsersController < ApplicationController

  def index
    @users = User.all
    #@user = User.paginate(:page => params[:page])
  end

  def home
  end

  def new
    @user = User.new
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
  
  
end
