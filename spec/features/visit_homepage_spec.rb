# frozen_string_literal: true

feature 'Homepage' do
  scenario 'visit homepage' do
    visit '/'
    expect(page).to have_content 'Welcome to Bookmark Manager!'
  end
end
