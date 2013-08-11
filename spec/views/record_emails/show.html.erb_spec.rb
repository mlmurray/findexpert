require 'spec_helper'

describe "record_emails/show" do
  before(:each) do
    @record_email = assign(:record_email, stub_model(RecordEmail,
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
  end
end
