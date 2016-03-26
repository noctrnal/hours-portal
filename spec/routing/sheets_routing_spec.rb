require "rails_helper"

RSpec.describe Api::V1::SheetsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/api/v1/sheets").to route_to(
        :controller => "api/v1/sheets",
        :action => "index",
      )
    end

    it "routes to #show" do
      expect(:get => "/api/v1/sheets/1").to route_to(
        :controller => "api/v1/sheets",
        :action => "show",
        :id => "1",
      )
    end

    it "routes to #create" do
      expect(:post => "/api/v1/sheets").to route_to(
        :controller => "api/v1/sheets",
        :action => "create",
      )
    end

    it "routes to #update" do
      expect(:put => "/api/v1/sheets/1").to route_to(
        :controller => "api/v1/sheets",
        :action => "update",
        :id => "1",
      )
    end

    it "routes to #destroy" do
      expect(:delete => "/api/v1/sheets/1").to route_to(
        :controller => "api/v1/sheets",
        :action => "destroy",
        :id => "1",
      )
    end
  end
end
