RSpec.configure do
  def log_in
    visit '/users/sign_in'
    fill_in 'Email', with: 'user@example.com'
    fill_in 'Password', with: 'password'
    click_on 'Log in'
  end

  def log_in_as_admin
    page.driver.browser.basic_authorize(ENV['ADMIN_NAME'], ENV['ADMIN_PASS'])
  end
end
