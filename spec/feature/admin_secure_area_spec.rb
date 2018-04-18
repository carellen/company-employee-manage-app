require "rails_helper"

describe "the admin area is secure", type: :feature do
  before :each do
    User.create(email: 'user@example.com', password: 'password')
  end

  it "fail when user try to access admin area" do
    visit '/users/sign_in'
    fill_in 'Email', with: 'user@example.com'
    fill_in 'Password', with: 'password'
    click_button 'Log in'
    visit "/admin/dashboard"
    assert_equal 401, status_code
  end
end
