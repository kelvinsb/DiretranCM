require 'rails_helper'

RSpec.describe "Cids", type: :request do
  describe "GET /cids" do
    it "works! (now write some real specs)" do
      get cids_path
      expect(response).to have_http_status(200)
    end
  end
end
