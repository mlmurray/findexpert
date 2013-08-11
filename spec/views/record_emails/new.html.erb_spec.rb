require 'spec_helper'

describe "record_emails/new" do
  before(:each) do
    assign(:record_email, stub_model(RecordEmail,
      :email => "MyString"
    ).as_new_record)
  end

  it "renders new record_email form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", record_emails_path, "post" do
      assert_select "input#record_email_email[name=?]", "record_email[email]"
    end
  end
end
