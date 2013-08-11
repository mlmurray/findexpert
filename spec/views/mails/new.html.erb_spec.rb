require 'spec_helper'

describe "mails/new" do
  before(:each) do
    assign(:mail, stub_model(Mail,
      :email => "MyString"
    ).as_new_record)
  end

  it "renders new mail form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", mails_path, "post" do
      assert_select "input#mail_email[name=?]", "mail[email]"
    end
  end
end
