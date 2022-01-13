# frozen_string_literal: true

def setup_test
  conn = PG.connect(dbname: 'bookmark_manager_test')
  conn.exec('TRUNCATE bookmarks')
end

def add_test_bookmarks
  Bookmark.add(title: 'Makers', url: 'http://www.makersacademy.com')
  Bookmark.add(title: 'Destroy All Software', url: 'http://www.destroyallsoftware.com')
  Bookmark.add(title: 'Google', url: 'http://www.google.com')
end
