# frozen_string_literal: true

require 'pg'
# this class makes bookmarks
class Bookmark

  attr_reader :id, :title, :url

  def initialize(id:, title:, url:)
    @id  = id
    @title = title
    @url = url
  end


  def self.connect
    if ENV['ENVIRONMENT'] == 'test'
      PG.connect(dbname: 'bookmark_manager_test')
    else
      PG.connect(dbname: 'bookmark_manager')
    end
  end

  def self.all
    connection = connect

    result = connection.exec('SELECT * FROM bookmarks')
    result.map do |bookmark|
      Bookmark.new(id: bookmark['id'], title: bookmark['title'], url: bookmark['url'])
    end
  end

  def self.add(title:, url:)
    connection = connect

    result = connection.exec("INSERT INTO bookmarks (title, url) VALUES ('#{title}', '#{url}') RETURNING id, url, title")
    Bookmark.new(id: result[0]['id'], title: result[0]['title'], url: result[0]['url'])
  end
end
