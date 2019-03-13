# Gets the sinatra gem and uses it
require 'sinatra'

# Means you dont have to reset the server when chanegs are made
require 'sinatra/reloader'

# Addon to the sinatra gem to allow you to stream data
require 'sinatra/streaming'

set :bind, '0.0.0.0' # Only needed for codio to link it to LOCALHOST

get '/' do
  stream do |out|
    out.puts "Hello World!", "How are you?"
    out.write "Written #{out.pos} bytes so far!\n"
    out.putc(65) unless out.closed?
    out.flush
  end
end