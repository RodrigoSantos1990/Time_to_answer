require 'rails_helper'

feature "Welcome", type: :feature do

  scenario 'Show the mesage welcome' do
  visit('/')
  expect(page).to have_content('Welcome')
  end


end
