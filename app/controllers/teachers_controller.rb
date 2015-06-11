class TeachersController < ApplicationController

  before_action :check_if_owner, only: [:edit, :update, :destroy]

  def check_if_owner
    teacher = Teacher.find(params[:id])
    if teacher.advocate_id != current_advocate.id
      redirect_to "/teachers", notice:"Nope, you are not that teacher's advocate!"
    end
  end

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

    @teacher.classroom_id = params[:classroom_id]

    @teacher.name = params[:name]

    if @teacher.save
      redirect_to "/teachers", :notice => "Teacher created successfully."
    else
      render 'new'
    end

  end

  def create_classroom_teacher
    @teacher = Teacher.new

    @teacher.advocate_id = params[:advocate_id]

    @teacher.gender = params[:gender]

    @teacher.dob = params[:dob]

    @teacher.education_level = params[:education_level]

    @teacher.teacher_enrollment_id = params[:teacher_enrollment_id]

    @teacher.school_id = params[:school_id]

    @teacher.classroom_id = params[:classroom_id]

    @teacher.name = params[:name]

    if @teacher.save
      redirect_to :back , :notice => "Teacher created and added to classroom successfully."
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

    @teacher.classroom_id = params[:classroom_id]

    @teacher.name = params[:name]

    if @teacher.save
      redirect_to "/teachers", :notice => "Teacher updated successfully."
    else
      render 'edit'
    end

  end

  def update_teacher_classroom
    @teacher = Teacher.find(params[:teacher_id])

    @teacher.classroom_id = params[:teacher_classroom_id]

    if @teacher.save
      redirect_to :back , :notice => "Teacher added to classroom."
    else
      render 'edit'
    end
  end

  def remove_teacher_classroom
    @teacher = Teacher.find(params[:teacher_id])

    @teacher.classroom_id = params[:teacher_classroom_id]

    if @teacher.save
      redirect_to :back , :notice => "Teacher removed from classroom."
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
