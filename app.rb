require 'active_record'
require 'yaml'
require 'erb'
require './models/book.rb'

db_conf = YAML.load( ERB.new( File.read("./config/database.yml") ).result )

ActiveRecord::Base.establish_connection(db_conf["development"])

# 保存
book = Book.new
book.title = "タイトルです"
book.save

# 取得
books = Book.all
book1 = Book.find(1)
puts book1.title
