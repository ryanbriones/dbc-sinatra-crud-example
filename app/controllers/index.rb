require "ostruct"

get '/' do
  @contacts = [
    OpenStruct.new(:id => 1, :first_name => "Ryan", :last_name => "Briones", :phone => "55555551212", :email => "ryan@devbootcamp.com")
  ]
  erb :index
end
