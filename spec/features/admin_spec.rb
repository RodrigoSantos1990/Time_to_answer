require 'rails_helper'

feature "Admin", type: :feature do

	scenario 'Show  admin login page' do
		visit('/admins/sign_in')
		expect(page).to have_content('Log in')
		end

	scenario 'Show  admin index page' do
		visit('/admins_backoffice/welcome/index')
		expect(page).to have_content('')
	end
end