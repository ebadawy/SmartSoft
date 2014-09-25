require 'rails_helper'

RSpec.describe "username:strings/show", :type => :view do
  before(:each) do
    @username:string = assign(:username:string, Username:string.create!(
      :password => "Password",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Password/)
    expect(rendered).to match(/Email/)
  end
end
