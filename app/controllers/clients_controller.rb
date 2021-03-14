# frozen_string_literal: true

class ClientsController < ApplicationController
  before_action :authenticate_user!
  before_action :fetch_client, only: %i[edit show update destroy]

  def index
    @clients = current_user.clients.order('created_at DESC')
  end

  def show; end

  def new
    @client = current_user.clients.build
  end

  def update
    if @client.update(client_params)
      redirect_to clients_path
    else
      render :edit
    end
  end

  def destroy
    @client.destroy
    redirect_to clients_path
  end

  def create
    @client = current_user.clients.new(client_params)
    if @client.save
      redirect_to clients_path
    else
      render :new
    end
  end

  private

  def fetch_client
    @client = current_user.clients.find(params[:id])
  end

  def client_params
    params.require(:client).permit(
      :first_name,
      :last_name,
      :email,
      :mobile_phone
    )
  end
end

