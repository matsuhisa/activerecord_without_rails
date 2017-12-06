require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter => 'mysql2',
  :database => 'slackbot',
  :username => 'root'
)

ActiveRecord::Migration.create_table :books do |t|
  t.string :title
  t.integer :price
  t.timestamps
end
