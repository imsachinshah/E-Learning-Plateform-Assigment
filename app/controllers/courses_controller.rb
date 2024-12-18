class CoursesController < ApplicationController

	before_action :authenticate_user!
	before_action :authorize_instructor, only: [:new, :create]
  load_and_authorize_resource

	def index
	  @courses = Course.all
		@courses = current_user.courses if current_user.instructor?
	  @courses = @courses.by_name(params[:name]) if params[:name].present?
	  @courses = @courses.by_category(params[:category]) if params[:category].present?
	  @courses = @courses.by_instructor(params[:instructor]) if params[:instructor].present?
	end

  def new
    @course = current_user.courses.build
  end

  def create
    @course = current_user.courses.build(course_params)
    if @course.save
      redirect_to @course, notice: 'Course created successfully!'
    else
      render :new, alert: 'Failed to create course.'
    end
  end

  def show
    @course = Course.find(params[:id])
    @reviews = @course.reviews.includes(:user)
  end

  def enroll
	  course = Course.find(params[:id])
	  if course.enrollments.create(user: current_user)
	    redirect_to course, notice: 'Enrolled successfully!'
	  else
	    redirect_to course, alert: 'Enrollment failed.'
	  end
	end


  private

  def course_params
    params.require(:course).permit(:title, :description, :thumbnail, :max_capacity, :start_date, :end_date, :schedule, :category)
  end

  def authorize_instructor
	  redirect_to root_path, alert: 'Access denied' unless current_user.instructor?
	end
end
