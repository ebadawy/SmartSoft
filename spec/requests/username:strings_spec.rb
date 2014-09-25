require 'rails_helper'

RSpec.describe "Username:strings", :type => :request do
  describe "GET /username:strings" do
    it "works! (now write some real specs)" do
      get username:strings_path
      expect(response).to have_http_status(200)
    end
  end
end
