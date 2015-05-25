class TeachersController < ApplicationController
  def index
    @teachers = Teacher.all
  end

  def show
    @teacher = Teacher.find(params[:id])
  end

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new

    @teacher.advocate_id = params[:advocate_id]

    @teacher.gender = params[:gender]

    @teacher.dob = params[:dob]

    @teacher.education_level = params[:education_level]

    @teacher.teacher_enrollment_id = params[:teacher_enrollment_id]

    @teacher.school_id = params[:school_id]

    @teacher.name = params[:name]



    if @teacher.save
      redirect_to "/teachers", :notice => "Teacher created successfully."
    else
      render 'new'
    end

  end

  def edit
    @teacher = Teacher.find(params[:id])
  end

  def update
    @teacher = Teacher.find(params[:id])


    @teacher.advocate_id = params[:advocate_id]

    @teacher.gender = params[:gender]

    @teacher.dob = params[:dob]

    @teacher.education_level = params[:education_level]

    @teacher.teacher_enrollment_id = params[:teacher_enrollment_id]

    @teacher.school_id = params[:school_id]

    @teacher.name = params[:name]



    if @teacher.save
      redirect_to "/teachers", :notice => "Teacher updated successfully."
    else
      render 'edit'
    end

  end

  def destroy
    @teacher = Teacher.find(params[:id])

    @teacher.destroy


    redirect_to "/teachers", :notice => "Teacher deleted."

  end
end
