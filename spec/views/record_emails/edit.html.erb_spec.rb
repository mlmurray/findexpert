require 'spec_helper'

describe "record_emails/edit" do
  before(:each) do
    @record_email = assign(:record_email, stub_model(RecordEmail,
      :email => "MyString"
    ))
  end

  it "renders the edit record_email form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", record_email_path(@record_email), "post" do
      assert_select "input#record_email_email[name=?]", "record_email[email]"
    end
  end
end
