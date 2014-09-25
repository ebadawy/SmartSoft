require 'rails_helper'

RSpec.describe "username:strings/new", :type => :view do
  before(:each) do
    assign(:username:string, Username:string.new(
      :password => "MyString",
      :email => "MyString"
    ))
  end

  it "renders new username:string form" do
    render

    assert_select "form[action=?][method=?]", username:strings_path, "post" do

      assert_select "input#username:string_password[name=?]", "username:string[password]"

      assert_select "input#username:string_email[name=?]", "username:string[email]"
    end
  end
end
