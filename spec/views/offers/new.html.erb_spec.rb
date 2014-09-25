require 'rails_helper'

RSpec.describe "offers/new", :type => :view do
  before(:each) do
    assign(:offer, Offer.new(
      :book_name => "MyString",
      :old_price => 1,
      :new_price => 1
    ))
  end

  it "renders new offer form" do
    render

    assert_select "form[action=?][method=?]", offers_path, "post" do

      assert_select "input#offer_book_name[name=?]", "offer[book_name]"

      assert_select "input#offer_old_price[name=?]", "offer[old_price]"

      assert_select "input#offer_new_price[name=?]", "offer[new_price]"
    end
  end
end
