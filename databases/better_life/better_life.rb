# Better Life Now!

# require gems

require 'sqlite3'
require 'faker'
require 'Rainbow'

# create SQLite3 database / This also can take a block if i want it too
#db = stores the database into a variable

db = SQLite3::Database.new("better_life.db")
db.results_as_hash = true

# #fancy string delimiters: string in ruby that will get passed through a method as a string

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS better_life(
    id INTEGER PRIMARY KEY,
    mindful_meditation VARCHAR(255),
    city VARCHAR(255),
    state VARCHAR(255),
    word VARCHAR(255)
    )
SQL

# # call method to create this table passs string into the execute method as an argument

db.execute(create_table_cmd)

# add a test better life


def create_mindful_day(db, mindful_meditation, city,state, word)
  db.execute("INSERT INTO better_life (mindful_meditation, city, state, word) VALUES (?, ?, ?, ?)", [mindful_meditation, city, state, word])
end 

mindful_meditation = ["Guided", "Pranayama", "Open eyed", "Walking", "Dancing",]

31.times do
  create_mindful_day(db, mindful_meditation.sample, Faker::Address.city, Faker::Address.state, Faker::Hipster.word )
end


# Explore ORM by retreiving data:
better_life = db.execute("SELECT * from better_life")
better_life.each do |suggestion|
  puts "Your mindful meditation of #{suggestion['mindful_meditation']} would be best practiced in #{suggestion['city']} , #{suggestion['state']} while repeating the mantra *** #{suggestion['word']} ***."
end






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
