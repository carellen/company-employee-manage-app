describe 'admin companies management', type: :feature do
  let!(:company) { create(:company) }
  before(:each) { log_in_as_admin }

  it 'create company' do
    visit '/admin'
    click_on 'companies'
    click_on 'New Company'
    fill_in 'Company name', with: 'Unique company'
    click_on 'Create Company'
    expect(page).to have_content 'Unique company'
  end

  it 'edit company' do
    visit "admin/manage/companies/#{company.slug}"
    click_on 'Edit'
    fill_in 'Company name', with: 'Unique company'
    click_on 'Update Company'
    expect(page).to have_content 'Unique company'
  end

  it 'delete company' do
    visit 'admin/manage/companies'
    expect(page).to have_content "#{company.name}"
    click_on 'Destroy'
    expect(page).not_to have_content "#{company.name}"
  end

end
