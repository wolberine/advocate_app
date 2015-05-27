class StudentsController < ApplicationController
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

  def destroy
    @student = Student.find(params[:id])

    @student.destroy


    redirect_to "/students", :notice => "Student deleted."

  end
end
