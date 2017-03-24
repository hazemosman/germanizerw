require "rails_helper"

RSpec.describe PronounsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/pronouns").to route_to("pronouns#index")
    end

    it "routes to #new" do
      expect(:get => "/pronouns/new").to route_to("pronouns#new")
    end

    it "routes to #show" do
      expect(:get => "/pronouns/1").to route_to("pronouns#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/pronouns/1/edit").to route_to("pronouns#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/pronouns").to route_to("pronouns#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/pronouns/1").to route_to("pronouns#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/pronouns/1").to route_to("pronouns#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/pronouns/1").to route_to("pronouns#destroy", :id => "1")
    end

  end
end
