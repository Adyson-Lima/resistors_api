require "rails_helper"

RSpec.describe Resistor, type: :model do

  before{@resistor = Resistor.new}

  describe "Teste de preenchimento do model Resistor" do

    it "res_type consegue ser preenchido?" do
      @resistor.res_type = "smd"
      expect(@resistor.res_type).to eq("smd")
    end

  end

end
