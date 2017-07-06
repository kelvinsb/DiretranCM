require 'rails_helper'

RSpec.describe UsuariosController, type: :controller do

  describe "GET #listar" do
    it "returns http success" do
      get :listar
      expect(response).to have_http_status(:success)
    end
  end

end
