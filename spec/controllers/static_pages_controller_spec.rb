require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do

  render_views

  describe "home page" do
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
    end

    it "is root" do
      expect(get: root_url(subdomain: nil)).to route_to(
        controller: "static_pages",
        action: "home")
    end
  end

  describe "GET #gallery" do
    it "returns http success" do
      get :gallery
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #blog" do
    it "returns http success" do
      get :blog
      expect(response).to have_http_status(:success)
    end
  end

end
