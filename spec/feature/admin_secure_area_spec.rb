describe 'the admin area is secure', type: :feature do
  let!(:user) { create(:user) }

  it 'succeed when admin try to access admin area' do
    page.driver.browser.basic_authorize(ENV['ADMIN_NAME'], ENV['ADMIN_PASS'])
    visit '/admin/dashboard'
    expect(page).to have_http_status(200)
  end

  it 'fail when guest try to access admin area' do
    visit '/admin/dashboard'
    expect(page).to have_http_status(401)
  end

  it 'fail when user try to access admin area' do
    log_in
    visit '/admin/dashboard'
    expect(page).to have_http_status(401)
  end
end
