require 'rails_helper'

RSpec.describe "Apartments", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/apartments/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/apartments/show"
      expect(response).to have_http_status(:success)
    end
  end

end
