require 'sinatra'
require 'slim'
require 'sqlite3'

get('/')  do
    slim(:start)
end 