class NetworksController < ApplicationController
  def index
    @networks = Network.all
  end

  def show
    @network = Network.find(params[:id])
  end

  def new
    @network = Network.new
  end

  def create
    @network = Network.new

    @network.advocate_id = params[:advocate_id]

    @network.country = params[:country]

    @network.name = params[:name]



    if @network.save
      redirect_to "/networks", :notice => "Network created successfully."
    else
      render 'new'
    end

  end

  def edit
    @network = Network.find(params[:id])
  end

  def update
    @network = Network.find(params[:id])


    @network.advocate_id = params[:advocate_id]

    @network.country = params[:country]

    @network.name = params[:name]



    if @network.save
      redirect_to "/networks", :notice => "Network updated successfully."
    else
      render 'edit'
    end

  end

  def destroy
    @network = Network.find(params[:id])

    @network.destroy


    redirect_to "/networks", :notice => "Network deleted."

  end
end
