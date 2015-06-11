class ClassroomsController < ApplicationController

  before_action :check_if_owner, only: [:edit, :update, :destroy]

  def check_if_owner
    classroom = Classroom.find(params[:id])
    if classroom.school.advocate_id != current_advocate.id
      redirect_to "/classrooms", notice:"Nope, you are not that classrooms's advocate!"
    end
  end

  def index
    @classrooms = Classroom.all
  end

  def show
    @classroom = Classroom.find(params[:id])
  end

  def new
    @classroom = Classroom.new
  end

  def create
    @classroom = Classroom.new

    @classroom.school_id = params[:school_id]

    @classroom.name = params[:name]

    @classroom.description = params[:description]



    if @classroom.save
      redirect_to "/classrooms", :notice => "Classroom created successfully."
    else
      render 'new'
    end

  end

  def edit
    @classroom = Classroom.find(params[:id])
    get_new_student
    get_new_teacher
  end

  def update
    @classroom = Classroom.find(params[:id])

    @classroom.school_id = params[:school_id]

    @classroom.name = params[:name]

    @classroom.description = params[:description]

    if @classroom.save
      redirect_to "/classrooms", :notice => "Classroom updated successfully."
    else
      render 'edit'
    end

  end

  def destroy
    @classroom = Classroom.find(params[:id])

    @classroom.destroy

    redirect_to "/classrooms", :notice => "Classroom deleted."

  end
end


 private

 def get_new_student
    @student = Student.new
 end

 def get_new_teacher
    @teacher = Teacher.new
 end
