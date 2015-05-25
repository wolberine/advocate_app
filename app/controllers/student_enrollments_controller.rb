class StudentEnrollmentsController < ApplicationController
  def index
    @student_enrollments = StudentEnrollment.all
  end

  def show
    @student_enrollment = StudentEnrollment.find(params[:id])
  end

  def new
    @student_enrollment = StudentEnrollment.new
  end

  def create
    @student_enrollment = StudentEnrollment.new

    @student_enrollment.teacher_id = params[:teacher_id]

    @student_enrollment.student_id = params[:student_id]



    if @student_enrollment.save
      redirect_to "/student_enrollments", :notice => "Student enrollment created successfully."
    else
      render 'new'
    end

  end

  def edit
    @student_enrollment = StudentEnrollment.find(params[:id])
  end

  def update
    @student_enrollment = StudentEnrollment.find(params[:id])


    @student_enrollment.teacher_id = params[:teacher_id]

    @student_enrollment.student_id = params[:student_id]



    if @student_enrollment.save
      redirect_to "/student_enrollments", :notice => "Student enrollment updated successfully."
    else
      render 'edit'
    end

  end

  def destroy
    @student_enrollment = StudentEnrollment.find(params[:id])

    @student_enrollment.destroy


    redirect_to "/student_enrollments", :notice => "Student enrollment deleted."

  end
end
