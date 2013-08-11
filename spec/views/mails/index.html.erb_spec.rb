require 'spec_helper'

describe "mails/index" do
  before(:each) do
    assign(:mails, [
      stub_model(Mail,
        :email => "Email"
      ),
      stub_model(Mail,
        :email => "Email"
      )
    ])
  end

  it "renders a list of mails" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
