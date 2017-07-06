require 'rails_helper'

RSpec.describe "InfCarteirinhas", type: :request do
  describe "GET /inf_carteirinhas" do
    it "works! (now write some real specs)" do
      get inf_carteirinhas_path
      expect(response).to have_http_status(200)
    end
  end
end
