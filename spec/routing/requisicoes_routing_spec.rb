require "rails_helper"

RSpec.describe RequisicoesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/requisicoes").to route_to("requisicoes#index")
    end

    it "routes to #new" do
      expect(:get => "/requisicoes/new").to route_to("requisicoes#new")
    end

    it "routes to #show" do
      expect(:get => "/requisicoes/1").to route_to("requisicoes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/requisicoes/1/edit").to route_to("requisicoes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/requisicoes").to route_to("requisicoes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/requisicoes/1").to route_to("requisicoes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/requisicoes/1").to route_to("requisicoes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/requisicoes/1").to route_to("requisicoes#destroy", :id => "1")
    end

  end
end
