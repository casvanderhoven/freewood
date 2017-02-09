require 'rails_helper'

RSpec.describe "static_pages/gallery.html.erb", type: :view do
  before :each do
		render template: "static_pages/gallery.html.erb", layout: "layouts/application"
	end

	it 'has title Gallery | Freewood' do
		expect(rendered).to have_title("Gallery | Freewood")
	end
end
