require 'rails_helper'

RSpec.describe "username:strings/index", :type => :view do
  before(:each) do
    assign(:username:strings, [
      Username:string.create!(
        :password => "Password",
        :email => "Email"
      ),
      Username:string.create!(
        :password => "Password",
        :email => "Email"
      )
    ])
  end

  it "renders a list of username:strings" do
    render
    assert_select "tr>td", :text => "Password".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
