require 'rails_helper'

RSpec.describe "Requisicoes", type: :request do
  describe "GET /requisicoes" do
    it "works! (now write some real specs)" do
      get requisicoes_path
      expect(response).to have_http_status(200)
    end
  end
end
