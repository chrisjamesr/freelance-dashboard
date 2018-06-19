class ClientsController < ApplicationController
  def create
    client = Client.new(client_params)
    if client.save
      render json: client
    else
      render json: client.errors
    end
  end                                                                                                                                   

  def index
    clients = Client.all
    render json: clients
  end

  def show
    client = Client.find(params[:client_id])
    render json: client
  end

  def update
    client = Client.find(params[:client_id])
    if client.update(client_params)
      render json: client
    end
  end

  def destroy
    client = Client.find(params[:client_id])
    client.destroy                                                                                                                                                                                                                                                                                                                                                                                                
  end

  private
  def client_params
    params.require(:client).permit(:name, :description)
  end

end
