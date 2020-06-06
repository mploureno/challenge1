class ClientsController < ApplicationController
  
  def index; end

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
end
