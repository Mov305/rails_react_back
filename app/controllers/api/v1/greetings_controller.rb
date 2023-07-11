class Api::V1::GreetingsController < ApplicationController
  before_action :set_greeting, :set_default_format, only: %i[show update destroy]

  # GET /greetings
  def index
    random_greeting = Greeting.order('RANDOM()').first
    render json: random_greeting
  end

  # GET /greetings/1
  def show
    render json: @greeting
  end

  # POST /greetings
  def create
    @greeting = Greeting.new(greeting_params)

    if @greeting.save
      render json: @greeting, status: :created, location: @greeting
    else
      render json: @greeting.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /greetings/1
  def update
    if @greeting.update(greeting_params)
      render json: @greeting
    else
      render json: @greeting.errors, status: :unprocessable_entity
    end
  end

  # DELETE /greetings/1
  def destroy
    @greeting.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_greeting
    @greeting = Greeting.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def greeting_params
    params.require(:greeting).permit(:text)
  end

  # set up the default formate
  def set_default_format
    request.format = :json
  end
end
