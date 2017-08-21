require 'rails_helper'

RSpec.describe "InfoCarteirinhas", type: :request do
  describe "GET /info_carteirinhas" do
    it "works! (now write some real specs)" do
      get info_carteirinhas_path
      expect(response).to have_http_status(200)
    end
  end
end
