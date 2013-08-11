require "spec_helper"

describe RecordEmailsController do
  describe "routing" do

    it "routes to #index" do
      get("/record_emails").should route_to("record_emails#index")
    end

    it "routes to #new" do
      get("/record_emails/new").should route_to("record_emails#new")
    end

    it "routes to #show" do
      get("/record_emails/1").should route_to("record_emails#show", :id => "1")
    end

    it "routes to #edit" do
      get("/record_emails/1/edit").should route_to("record_emails#edit", :id => "1")
    end

    it "routes to #create" do
      post("/record_emails").should route_to("record_emails#create")
    end

    it "routes to #update" do
      put("/record_emails/1").should route_to("record_emails#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/record_emails/1").should route_to("record_emails#destroy", :id => "1")
    end

  end
end
