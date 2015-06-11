class StudentsController < ApplicationController

  before_action :check_if_owner, only: [:edit, :update, :destroy]

  def check_if_owner
    student = Student.find(params[:id])
    if student.classroom.school.advocate_id != current_advocate.id
      redirect_to "/students", notice:"Nope, you are not that student's advocate!"
    end
  end

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new

    @student.school_id = params[:school_id]

    @student.classroom_id = params[:classroom_id]

    @student.gender = params[:gender]

    @student.dob = params[:dob]

    @student.education_level = params[:education_level]

    @student.name = params[:name]

    if @student.save
      redirect_to "/students", :notice => "Student created successfully."
    else
      render 'new'
    end

  end

  def create_classroom_student
    @student = Student.new

    @student.school_id = params[:school_id]

    @student.classroom_id = params[:classroom_id]

    @student.gender = params[:gender]

    @student.dob = params[:dob]

    @student.education_level = params[:education_level]

    @student.name = params[:name]

    if @student.save
      redirect_to :back, :notice => "Student created and added to classroom successfully."
    else
      render 'new'
    end

  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])

    @student.school_id = params[:school_id]

    @student.classroom_id = params[:classroom_id]

    @student.gender = params[:gender]

    @student.dob = params[:dob]

    @student.education_level = params[:education_level]

    @student.name = params[:name]

    if @student.save
      redirect_to "/students", :notice => "Student updated successfully."
    else
      render 'edit'
    end

  end


  def update_student_classroom
    @student = Student.find(params[:student_id])

    @student.classroom_id = params[:student_classroom_id]

    if @student.save
      redirect_to :back , :notice => "Student added to classroom."
    else
      render 'edit'
    end
  end

  def remove_student_classroom
    @student = Student.find(params[:student_id])

    @student.classroom_id = params[:student_classroom_id]

    if @student.save
      redirect_to :back , :notice => "Student removed from classroom."
    else
      render 'edit'
    end
  end

  def destroy
    @student = Student.find(params[:id])

    @student.destroy


    redirect_to "/students", :notice => "Student deleted."

  end
end
