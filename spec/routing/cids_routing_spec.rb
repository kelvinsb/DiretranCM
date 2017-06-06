require "rails_helper"

RSpec.describe CidsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/cids").to route_to("cids#index")
    end

    it "routes to #new" do
      expect(:get => "/cids/new").to route_to("cids#new")
    end

    it "routes to #show" do
      expect(:get => "/cids/1").to route_to("cids#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/cids/1/edit").to route_to("cids#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/cids").to route_to("cids#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/cids/1").to route_to("cids#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/cids/1").to route_to("cids#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/cids/1").to route_to("cids#destroy", :id => "1")
    end

  end
end
