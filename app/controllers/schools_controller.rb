class SchoolsController < ApplicationController
  def index
    @schools = School.all
  end

  def show
    @school = School.find(params[:id])
  end

  def new
    @school = School.new
  end

  def create
    @school = School.new

    @school.advocate_id = params[:advocate_id]

    @school.network_id = params[:network_id]

    @school.longitude = params[:longitude]

    @school.latitude = params[:latitude]

    @school.location = params[:location]

    @school.name = params[:name]



    if @school.save
      redirect_to "/schools", :notice => "School created successfully."
    else
      render 'new'
    end

  end

  def edit
    @school = School.find(params[:id])
  end

  def update
    @school = School.find(params[:id])


    @school.advocate_id = params[:advocate_id]

    @school.network_id = params[:network_id]

    @school.longitude = params[:longitude]

    @school.latitude = params[:latitude]

    @school.location = params[:location]

    @school.name = params[:name]



    if @school.save
      redirect_to "/schools", :notice => "School updated successfully."
    else
      render 'edit'
    end

  end

  def destroy
    @school = School.find(params[:id])

    @school.destroy


    redirect_to "/schools", :notice => "School deleted."

  end
end
