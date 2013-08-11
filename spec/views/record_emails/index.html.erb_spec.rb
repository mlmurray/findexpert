require 'spec_helper'

describe "record_emails/index" do
  before(:each) do
    assign(:record_emails, [
      stub_model(RecordEmail,
        :email => "Email"
      ),
      stub_model(RecordEmail,
        :email => "Email"
      )
    ])
  end

  it "renders a list of record_emails" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
