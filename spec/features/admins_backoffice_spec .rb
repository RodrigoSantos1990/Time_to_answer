require 'rails_helper'

RSpec.feature "Enters in Admins Backoffices", type: :feature do
  it "visit admins_sign_in and log" do
    visit "/admins/welcome/index"
    expect(page).to have_content("Log in")
    fill_in 'Email', with: 'admin@admin.com'
    fill_in 'Password', with: '123456'
    click_on 'Log in'

  end


  it "visit backoffice and click on administradores link" do
    visit "/admins/welcome/index"
    expect(page).to have_content("Log in")
    fill_in "Email",	with: "admin@admin.com"
    fill_in "Password",	with: "123456"
    click_on 'Log in'
    expect(page).to have_content("x")
    click_on 'Administradores'
  end


end
