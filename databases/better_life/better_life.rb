# Better Life Now!

# require gems

require 'sqlite3'
require 'faker'
require 'rainbow'



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

# # call method to create this table / pass string into the execute method as an argument

db.execute(create_table_cmd)

# add a test better life


def create_mindful_day(db, mindful_meditation, city,state, word)
  db.execute("INSERT INTO better_life (mindful_meditation, city, state, word) VALUES (?, ?, ?, ?)", [mindful_meditation, city, state, word])
end 

mindful_meditation = ["Guided", "Pranayama", "Open-eyed", "Walking", "Dancing",]



# User Interface


puts Rainbow("Hello and welcome to *** WELL BEING ***, your app to a more mindful life").underline.red
puts Rainbow("Please enter your name").orange
user_input = gets.chomp
puts Rainbow("Hello #{user_input}! We know planning your meditations can be difficult. That's why we're happy to generate them for you! If you're ready to receive your first suggested meditation instructions, please type *I'm ready*. If you're not ready, please type *I'm not ready*").yellow
  user_status = gets.chomp
   
    if user_status == "I'm not ready"
    puts Rainbow("That's okay. Come back when you're ready to be a Well Being! NAMASTE.").green

    elsif user_status == "I'm ready"
      puts Rainbow("Wonderful! Please enter the number of meditations you'd like.").green
      med_number = gets.chomp.to_i
      puts Rainbow("Thank you! We're preparing your request of #{med_number} meditations, #{user_input}. Take a deep breath!").blue
      puts Rainbow("*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*").blink.blue
        med_number.times do
        create_mindful_day(db, mindful_meditation.sample, Faker::Address.city, Faker::Address.state, Faker::Hipster.word )
    end

    better_life = db.execute("SELECT * from better_life")
    better_life.each do |suggestion|
      puts Rainbow("Your mindful meditation of #{suggestion['mindful_meditation']} would be best practiced in #{suggestion['city']} , #{suggestion['state']} while repeating the mantra *** #{suggestion['word']} ***.").magenta
      puts Rainbow("*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*").blink.blue
      end
      puts Rainbow("Thank you for using WELL BEING! NAMASTE").red
      end









