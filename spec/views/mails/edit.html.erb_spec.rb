require 'spec_helper'

describe "mails/edit" do
  before(:each) do
    @mail = assign(:mail, stub_model(Mail,
      :email => "MyString"
    ))
  end

  it "renders the edit mail form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", mail_path(@mail), "post" do
      assert_select "input#mail_email[name=?]", "mail[email]"
    end
  end
end
