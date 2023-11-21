class Api::V1::ResistorsController < ApplicationController

  before_action :set_resistor, only: %i[] #show update destroy

  def index
    @resistors = Resistor.all
    render json: @resistors
  end

private

def set_resistor
  @resistor = Resistor.find(params[:id])
end

def resistor_params
  params.require(:resistor).permit(:res_type, :res_value)
end

end
