require "rails_helper"

RSpec.describe Username:stringsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/username:strings").to route_to("username:strings#index")
    end

    it "routes to #new" do
      expect(:get => "/username:strings/new").to route_to("username:strings#new")
    end

    it "routes to #show" do
      expect(:get => "/username:strings/1").to route_to("username:strings#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/username:strings/1/edit").to route_to("username:strings#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/username:strings").to route_to("username:strings#create")
    end

    it "routes to #update" do
      expect(:put => "/username:strings/1").to route_to("username:strings#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/username:strings/1").to route_to("username:strings#destroy", :id => "1")
    end

  end
end
