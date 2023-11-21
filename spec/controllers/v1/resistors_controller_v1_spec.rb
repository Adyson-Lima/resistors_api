require "rails_helper"

RSpec.describe Api::V1::ResistorsController, type: :controller do

  before{@resistor = Resistor.create(res_type: "memristor", res_value: "10ohms")}

  describe "GET api/v1/resistors" do
    it "Consegue listar todos os resistors e retornar status 200?" do
      get :index
      expect(JSON.parse(response.body).size).to eq(1)
      expect(response).to have_http_status(200)
    end
  end

  describe "GET api/v1/resistors/id" do
    it "Consegue listar um resistor especifico e retornar status 200?" do
      get :show, params: {id: @resistor.id}
      expect(response.body).to include_json(id: @resistor.id)
      expect(response).to have_http_status(200)
    end
  end

  describe "POST api/v1/resistors" do
    it "Consegue criar um resistor e retornar status 201?" do
      post :create, params: {resistor: {res_type: "pth", res_value: "50ohms"}, format: :json}
      expect(response.body).to include_json(res_value: "50ohms")
      expect(response).to have_http_status(201)
    end
  end

  describe "PATCH api/v1/resistors/id" do
    it "Consegue atualizar um resistor e retornar status 200?" do
      resistor = Resistor.last
      patch :update, params: {resistor: {res_type: "smd", res_value: "470ohms"}, id: resistor.id}
      expect(response.body).to include_json(res_value: "470ohms")
      expect(response).to have_http_status(200)
    end
  end

end
