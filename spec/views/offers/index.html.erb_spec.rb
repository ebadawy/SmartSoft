require 'rails_helper'

RSpec.describe "offers/index", :type => :view do
  before(:each) do
    assign(:offers, [
      Offer.create!(
        :book_name => "Book Name",
        :old_price => 1,
        :new_price => 2
      ),
      Offer.create!(
        :book_name => "Book Name",
        :old_price => 1,
        :new_price => 2
      )
    ])
  end

  it "renders a list of offers" do
    render
    assert_select "tr>td", :text => "Book Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
