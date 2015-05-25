class TeacherCoursesController < ApplicationController
  def index
    @teacher_courses = TeacherCourse.all
  end

  def show
    @teacher_course = TeacherCourse.find(params[:id])
  end

  def new
    @teacher_course = TeacherCourse.new
  end

  def create
    @teacher_course = TeacherCourse.new

    @teacher_course.date = params[:date]

    @teacher_course.description = params[:description]

    @teacher_course.teacher_enrollment_id = params[:teacher_enrollment_id]



    if @teacher_course.save
      redirect_to "/teacher_courses", :notice => "Teacher course created successfully."
    else
      render 'new'
    end

  end

  def edit
    @teacher_course = TeacherCourse.find(params[:id])
  end

  def update
    @teacher_course = TeacherCourse.find(params[:id])


    @teacher_course.date = params[:date]

    @teacher_course.description = params[:description]

    @teacher_course.teacher_enrollment_id = params[:teacher_enrollment_id]



    if @teacher_course.save
      redirect_to "/teacher_courses", :notice => "Teacher course updated successfully."
    else
      render 'edit'
    end

  end

  def destroy
    @teacher_course = TeacherCourse.find(params[:id])

    @teacher_course.destroy


    redirect_to "/teacher_courses", :notice => "Teacher course deleted."

  end
end
