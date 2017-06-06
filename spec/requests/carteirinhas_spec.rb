require 'rails_helper'

RSpec.describe "Carteirinhas", type: :request do
  describe "GET /carteirinhas" do
    it "works! (now write some real specs)" do
      get carteirinhas_path
      expect(response).to have_http_status(200)
    end
  end
end
