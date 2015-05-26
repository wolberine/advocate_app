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

    @school.location = params[:location]

    #google map api
    require 'json'
    require 'open-uri'
    url_beginning = "http://maps.googleapis.com/maps/api/geocode/json?address="
    url_middle = @school.location.downcase.tr(" ","+")
    url_ending = "&sensor=false"
    url = url_beginning + url_middle + url_ending
    parsed_data = JSON.parse(open(url).read)
    latitude = parsed_data["results"][0]["geometry"]["location"]["lat"].to_f
    longitude = parsed_data["results"][0]["geometry"]["location"]["lng"].to_f

    @school.latitude = latitude

    @school.longitude = longitude

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

    @school.location = params[:location]

    #google map api
    require 'json'
    require 'open-uri'
    url_beginning = "http://maps.googleapis.com/maps/api/geocode/json?address="
    url_middle = @school.location.downcase.tr(" ","+")
    url_ending = "&sensor=false"
    url = url_beginning + url_middle + url_ending
    parsed_data = JSON.parse(open(url).read)
    latitude = parsed_data["results"][0]["geometry"]["location"]["lat"].to_f
    longitude = parsed_data["results"][0]["geometry"]["location"]["lng"].to_f

    @school.latitude = latitude

    @school.longitude = longitude

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
