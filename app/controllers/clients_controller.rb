class ClientsController < ApplicationController
  before_action :find_client, only: [:show, :edit, :update, :destroy]

  def index
    @clients = Client.all.order("created_at DESC")
  end
  
  def show; end

  def new 
    @client = current_user.clients.build
  end
  
  def create 
    @client = current_user.clients.new(client_params)
    if @client.save
      redirect_to clients_path
    else
      render 'new'
    end    
  end

  private
  
  def client_params
    params.require(:client).permit(
      :first_name,
      :last_name,
      :email,
      :mobile_phone,
      :profile_photo      
    )
  end
  
  def find_client
    @client = Client.find(params[:id])
  end

end
