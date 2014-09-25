require 'rails_helper'

RSpec.describe "username:strings/edit", :type => :view do
  before(:each) do
    @username:string = assign(:username:string, Username:string.create!(
      :password => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit username:string form" do
    render

    assert_select "form[action=?][method=?]", username:string_path(@username:string), "post" do

      assert_select "input#username:string_password[name=?]", "username:string[password]"

      assert_select "input#username:string_email[name=?]", "username:string[email]"
    end
  end
end
