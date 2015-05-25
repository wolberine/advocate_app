class TeacherEnrollmentsController < ApplicationController
  def index
    @teacher_enrollments = TeacherEnrollment.all
  end

  def show
    @teacher_enrollment = TeacherEnrollment.find(params[:id])
  end

  def new
    @teacher_enrollment = TeacherEnrollment.new
  end

  def create
    @teacher_enrollment = TeacherEnrollment.new

    @teacher_enrollment.completed = params[:completed]

    @teacher_enrollment.teacher_course_id = params[:teacher_course_id]

    @teacher_enrollment.teacher_id = params[:teacher_id]



    if @teacher_enrollment.save
      redirect_to "/teacher_enrollments", :notice => "Teacher enrollment created successfully."
    else
      render 'new'
    end

  end

  def edit
    @teacher_enrollment = TeacherEnrollment.find(params[:id])
  end

  def update
    @teacher_enrollment = TeacherEnrollment.find(params[:id])


    @teacher_enrollment.completed = params[:completed]

    @teacher_enrollment.teacher_course_id = params[:teacher_course_id]

    @teacher_enrollment.teacher_id = params[:teacher_id]



    if @teacher_enrollment.save
      redirect_to "/teacher_enrollments", :notice => "Teacher enrollment updated successfully."
    else
      render 'edit'
    end

  end

  def destroy
    @teacher_enrollment = TeacherEnrollment.find(params[:id])

    @teacher_enrollment.destroy


    redirect_to "/teacher_enrollments", :notice => "Teacher enrollment deleted."

  end
end
