# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

campuses = SQLite3::Database.new("campuses.db")
campuses.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

get '/students/search' do
  @search = db.execute("SELECT * FROM students WHERE name= ? AND campus= ? AND age= ?", [params['name'], params['campus'], params['age'].to_i])
  erb :search
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

get '/students/campuses' do
  @campuses = campuses.execute("SELECT * FROM campuses")
  erb :campuses
end

# get '/students/search' do
#   @search = db.execute("SELECT * FROM students WHERE name= ? AND campus= ? AND age= ?", [params['name'], params['campus'], params['age'].to_i])
# end


# add static resources