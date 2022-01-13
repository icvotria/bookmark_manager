# frozen_string_literal: true

feature 'Bookmarks' do
  scenario 'viewing bookmarks' do
    add_test_bookmarks

    visit '/'
    expect(page).to have_content 'Makers'
    expect(page).to have_content 'Destroy All Software'
    expect(page).to have_content 'Google'
  end
end
