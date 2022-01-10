# frozen_string_literal: true

feature 'Bookmarks' do
  scenario 'viewing bookmarks' do
    visit '/bookmarks'
    expect(page).to have_content 'https://jspaint.app/'
    expect(page).to have_content 'https://michaelkelly.artofeurope.com/karl.htm'
  end
end
