describe 'companies management', type: :feature do
  let!(:company) { build(:company) }

  it 'checks crud for companies' do
    page.driver.browser.basic_authorize(ENV['ADMIN_NAME'], ENV['ADMIN_PASS'])
    visit '/admin'
    click_link 'companies'
    click_link 'New Company'
    fill_in 'Name', with: company.name
    fill_in 'Slug', with: company.slug
    click_button 'Create Company'
    expect(page).to have_content I18n.t('companies.manage.create_message')
    click_link 'Back'
    click_link 'Show'
    expect(page).to have_content "name #{company.name}"
    click_link 'Edit'
    fill_in 'Name', with: 'New name'
    click_button 'Update Company'
    expect(page).to have_content I18n.t('companies.manage.update_message_success')
    click_link 'Back'
    click_link 'Destroy'
    expect(page).to have_content I18n.t('companies.manage.delete_message_success')
  end


end
