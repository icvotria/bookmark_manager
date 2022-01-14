feature 'Delete bookmark' do
  scenario 'Deleting a bookmark' do
    Bookmark.add(title: 'Makers', url: 'http://www.makersacademy.com')
    Bookmark.add(title: 'Destroy All Software', url: 'http://www.destroyallsoftware.com')
    bookmark = Bookmark.add(title: 'Google', url: 'http://www.google.com')
    
    visit('/')
    find_by_id(bookmark.id).click

    expect(page).not_to have_content('Google')
    expect(page).to have_content('Makers')
    expect(page).to have_content('Destroy All Software')
  end
end
