require 'rails_helper'

RSpec.feature "Enters in Users Backoffices", type: :feature do
  it "visit users_sign_in and log" do
    visit "/users_backoffice/welcome/index"
    expect(page).to have_content("Log in")
    fill_in 'Email', with: 'user@user.com'
    fill_in 'Password', with: '123456'
    click_on 'Log in'

  end


end
