require 'rails_helper'

RSpec.describe "static_pages/home.html.erb", type: :view do

	before :each do
		render template: "static_pages/home.html.erb", layout: "layouts/application"
	end

	it 'has title Freewood' do
		expect(rendered).to have_title("Freewood")
	end
end
