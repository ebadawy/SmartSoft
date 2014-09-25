require 'rails_helper'

RSpec.describe "offers/show", :type => :view do
  before(:each) do
    @offer = assign(:offer, Offer.create!(
      :book_name => "Book Name",
      :old_price => 1,
      :new_price => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Book Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
