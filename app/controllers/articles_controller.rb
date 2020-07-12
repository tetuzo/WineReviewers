class ArticlesController < ApplicationController
  require 'mechanize'
  def index
    agent = Mechanize.new
    page = agent.get("https://www.winekingdom.co.jp/_tags/%E3%83%8B%E3%83%A5%E3%83%BC%E3%82%B9")
    @elements = page.search('a.content-link')
    @images = page.search('div.content-leading.flex-item a img')
    sleep(5)
  end
end
