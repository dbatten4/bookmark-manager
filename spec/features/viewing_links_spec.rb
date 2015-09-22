require_relative '../spec_helper'
feature 'Viewing links' do

  scenario 'I can see existing links on the links page' do
    Link.new(url: 'http://www.zombo.com', title: 'This is Zombocom')
    visit '/links'
    expect(page.status_code).to eq 200
    within 'ul#links' do
      expect(page).to have_content('This is Zombocom')
    end
  end

  scenario 'I can click a link which takes me to the create link page' do 
    visit '/links'
    click_link('Add link')
    expect(page).to have_content('URL')
  end

end