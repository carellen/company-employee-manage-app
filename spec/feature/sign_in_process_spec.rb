describe 'the signin process', type: :feature do
  let!(:user) { create(:user) }

  it 'signs me in' do
    visit '/users/sign_in'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log in'
    expect(page).to have_content 'Signed in successfully'
  end

  it 'signs me out' do
    log_in
    click_link 'Log out'
    expect(page).to have_content 'Log in'
  end

end
