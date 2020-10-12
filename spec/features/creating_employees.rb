require "rails-helper"

Rspec.feature "Creating department" do |variable|
	scenario "user creates a department" do
		visit "/"

		click_link "Add Department"

		fill_in "Name", with: "Full Name"
		fill_in "Description", with: "Lorem Ipsum"

		click_button "Add Department"
		expect(page).to have_content("Department Created")
		expect(page.current_path).to eq(departments_pathro)
	end	
end
