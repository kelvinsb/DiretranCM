require "rails_helper"

RSpec.describe InfoCarteirinhasController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/info_carteirinhas").to route_to("info_carteirinhas#index")
    end

    it "routes to #new" do
      expect(:get => "/info_carteirinhas/new").to route_to("info_carteirinhas#new")
    end

    it "routes to #show" do
      expect(:get => "/info_carteirinhas/1").to route_to("info_carteirinhas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/info_carteirinhas/1/edit").to route_to("info_carteirinhas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/info_carteirinhas").to route_to("info_carteirinhas#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/info_carteirinhas/1").to route_to("info_carteirinhas#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/info_carteirinhas/1").to route_to("info_carteirinhas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/info_carteirinhas/1").to route_to("info_carteirinhas#destroy", :id => "1")
    end

  end
end
