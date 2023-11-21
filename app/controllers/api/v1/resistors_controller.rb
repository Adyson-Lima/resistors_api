class Api::V1::ResistorsController < ApplicationController

  before_action :set_resistor, only: %i[show] #show update destroy

  def index
    @resistors = Resistor.all
    render json: @resistors
  end

  def show
    render json: @resistor
  end

  def create
    @resistor = Resistor.new(resistor_params)
    if @resistor.save
      render json: @resistor, status: :created, location: api_v1_resistor_url(@resistor)
    else
      render json: @resistor.errors, status: :unprocessable_entity
    end
  end

private

def set_resistor
  @resistor = Resistor.find(params[:id])
end

def resistor_params
  params.require(:resistor).permit(:res_type, :res_value)
end

end
