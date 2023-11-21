require "rails_helper"

RSpec.describe Resistor, type: :model do

  before{@resistor = Resistor.new}

  describe "Teste de preenchimento do model Resistor" do

    it "res_type consegue ser preenchido?" do
      @resistor.res_type = "smd"
      expect(@resistor.res_type).to eq("smd")
    end

    it "res_value consegue ser preenchido?" do
      @resistor.res_value = "100ohms"
      expect(@resistor.res_value).to eq("100ohms")
    end

  end

  describe "Teste de validação do model Resistor" do

    it "Resistor valido com campos obrigatorios preenchidos?" do
      @resistor.res_type = "pth"
      @resistor.res_value = "1k"
      expect(@resistor).to be_valid
    end

    it "Resistor invalido com campos obrigatorios não preenchidos?" do
      resistor = Resistor.new
      expect(resistor).to be_invalid
    end

  end

end
