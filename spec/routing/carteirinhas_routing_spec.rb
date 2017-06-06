require "rails_helper"

RSpec.describe CarteirinhasController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/carteirinhas").to route_to("carteirinhas#index")
    end

    it "routes to #new" do
      expect(:get => "/carteirinhas/new").to route_to("carteirinhas#new")
    end

    it "routes to #show" do
      expect(:get => "/carteirinhas/1").to route_to("carteirinhas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/carteirinhas/1/edit").to route_to("carteirinhas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/carteirinhas").to route_to("carteirinhas#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/carteirinhas/1").to route_to("carteirinhas#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/carteirinhas/1").to route_to("carteirinhas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/carteirinhas/1").to route_to("carteirinhas#destroy", :id => "1")
    end

  end
end
