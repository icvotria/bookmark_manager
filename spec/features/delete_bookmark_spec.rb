feature 'Delete bookmark' do
  scenario 'Deleting a bookmark' do
    Bookmark.add(title: 'Makers', url: 'http://www.makersacademy.com')
    
    visit('/')
    expect(page).to have_link('Makers', href: 'http://www.makersacademy.com')

    click_on 'Delete bookmark'

    expect(current_path).to eq '/'
    expect(page).not_to have_link('Makers', href: 'http://www.makersacademy.com')
  end
end
