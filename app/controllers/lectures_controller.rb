class LecturesController < ApplicationController
  def new
    @lecture = Lecture.new
  end

  def show
    @lecture = Lecture.find(params[:id])
    @posts = @lecture.posts
  end

  def index
    @lectures = Lecture.all
  end
end
