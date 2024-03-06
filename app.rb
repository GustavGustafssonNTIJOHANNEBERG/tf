require 'sinatra'
require 'slim'
require 'sqlite3'

get('/')  do
    slim(:start)
end 

get('/login') do
    
end

get('/write') do
    slim(:write)
end

post('/write') do
    title = params[:title]
    text = params[:text]
    db = SQLite3::Database.new("db/tabell.db")
    db.execute("INSERT INTO post (text, ämne) VALUES (?,?)",title, artist_id)
    redirect('/')
end