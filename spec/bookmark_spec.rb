# frozen_string_literal: true

require_relative 'setup_test_database'

describe Bookmark do
  describe '#all' do
    it 'returns bookmarks' do
      add_test_bookmarks

      bookmarks = Bookmark.all

      expect(bookmarks.size).to eq 3
      expect(bookmarks).to have_key 'Google'
      expect(bookmarks).to have_key 'Makers'
      expect(bookmarks).to have_key 'Destroy All Software'
    end
  end

  describe '#add' do
    it 'creates a new bookmark' do
      bookmark = Bookmark.add(url: 'http://www.example.org', title: 'Test Bookmark')
      persisted_data = PG.connect(dbname: 'bookmark_manager_test').query("SELECT * FROM bookmarks WHERE id = #{bookmark.id};")
  
      expect(bookmark).to be_a Bookmark
      expect(bookmark.id).to eq persisted_data.first['id']
      expect(bookmark.title).to eq 'Test Bookmark'
      expect(bookmark.url).to eq 'http://www.example.org'
    end
  end
end
