# Better Life Now!

# require gems

require 'sqlite3'
require 'faker'
require 'Rainbow'

# create SQLite3 database / This also can take a block if i want it too
#db = stores the database into a variable

db = SQLite3::Database.new("better_life.db")
# db.results_as_hash = true

# #fancy string delimiters

# create_table_cmd = <<-SQL
#   CREATE TABLE IF NOT EXISTS better_life(
#     id INTEGER PRIMARY KEY,
#     day VARCHAR(255),
#     mindful_meditation VARCHAR(255),
#     meditation_location VARCHAR(255),
#     mantra VARCHAR(255)
#     )
# SQL

# # call method to create this table

# db.execute(create_table_cmd)

# # create a method to insert info into each row while using ? for placeholder

# def log_day(db,day,mindful_meditation, meditation_location,mantra)
#   db.execute("INSERT INTO better_life (day, mindful_meditation,  meditation_location,mantra) VALUES (?, ?, ?, ?)", [day, mindful_meditation,  meditation_location,mantra])
# end 

# mindful_meditation = ["Guided", "Pranayama", "Open eyed", "Walking", "Dancing",]

# 50.times do
#   log_day(db, Faker: :day, mindful_meditation.sample, Faker: :city.meditation_location, Faker: :catchPhrase.mantra )
# end


# # User Interface
# puts "Hello and welcome to ***Well Being***, your app to a more mindful life."
# puts "Please enter your name"
# user_input = gets.chomp
# puts "Hello #{user_input}! We know planning your meditations can be difficult. That's why we're happy to generate them for you! If you're ready to receive your first one, please type *I'm ready*. If you're not ready, please type *I'm not ready*"
#   user_status = gets.chomp
   
#    if user_status == "I'm not ready"
#     puts "That's okay. Come back when you're ready to be a Well Being! Until then."

#   else user_status == "I'm ready"
#     puts "Wonderful! Your meditation plan is on its way!"

#     results = 
