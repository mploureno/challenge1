class ClientsController < ApplicationController
  
  def index
  end 

  def new 
    @client = Client.new
  end
  
  def create 
    @client = current_user.clients.new(client_params)
    if @client.save
      redirect_to root_path
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
