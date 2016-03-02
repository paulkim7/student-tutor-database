class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
      @user = User.find(params[:id])
      @lectures = @user.lectures
      @posts = @user.posts
    if current_user
      @current_user = current_user
    else
      redirect_to root_url
    end
    
  end

  def create
    @user = User.new(user_params)
    @lectures = Lecture.where(:id => params[:lectures_chosen])
    @user.lectures << @lectures
    if @user.save
      redirect_to root_url, :notice => "Signed up!"
    else
      render "new"
    end
  end

  def edit
    @user = current_user
  end
  
  def updateclasses
    @user = current_user
    @lectures = Lecture.where(:id => params[:lectures_chosen])
    @user.lectures.destroy_all
    @user.lectures << @lectures
    @user.save
    redirect_to current_user
  end

  def update
    @user = current_user
    @lectures = Lecture.where(:id => params[:lectures_chosen])
    @user.lectures.destroy_all
    @user.lectures << @lectures
    @user.update(user_params)
    if @user.save
      redirect_to @user
    else
      render 'edit'
    end
  end
    



  private

  def user_params
    params.require(:user).permit(:name,:email,:password,:password_confirmation)
  end
end
