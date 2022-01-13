# frozen_string_literal: true

feature 'Bookmarks' do
  scenario 'viewing bookmarks' do
    add_test_bookmarks

    visit '/'
    expect(page).to have_content 'http://www.makersacademy.com'
    expect(page).to have_content 'http://www.destroyallsoftware.com'
    expect(page).to have_content 'http://www.google.com'
  end
end
