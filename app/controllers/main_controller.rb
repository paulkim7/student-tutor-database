class MainController < ApplicationController
  def new
    @post = @Post.new
    @department = @Department.new
  end
  
  def index
    if current_user
      @lectures = current_user.lectures
    end
  end
end
