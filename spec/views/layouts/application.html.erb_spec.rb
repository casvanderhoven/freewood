require 'rails_helper'

RSpec.describe "layouts/application.html.erb", type: :view do

	it 'has a base title for the home page' do
		render template: "static_pages/home.html.erb", layout: "layouts/application"
		expect(rendered).to have_title("Freewood")
	end

	it 'uses full_title to combine base title with a provided title' do
		render template: 'static_pages/blog.html.erb', layout: 'layouts/application'
		expect(rendered).to have_title('Blog | Freewood')
	end

end
