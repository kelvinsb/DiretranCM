require "rails_helper"

RSpec.describe InfCarteirinhasController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/inf_carteirinhas").to route_to("inf_carteirinhas#index")
    end

    it "routes to #new" do
      expect(:get => "/inf_carteirinhas/new").to route_to("inf_carteirinhas#new")
    end

    it "routes to #show" do
      expect(:get => "/inf_carteirinhas/1").to route_to("inf_carteirinhas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/inf_carteirinhas/1/edit").to route_to("inf_carteirinhas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/inf_carteirinhas").to route_to("inf_carteirinhas#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/inf_carteirinhas/1").to route_to("inf_carteirinhas#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/inf_carteirinhas/1").to route_to("inf_carteirinhas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/inf_carteirinhas/1").to route_to("inf_carteirinhas#destroy", :id => "1")
    end

  end
end
