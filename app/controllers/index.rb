get '/' do
  @contacts = Contact.all
  erb :index
end

get '/contacts/new' do
  erb :new
end

post '/contacts' do
  @contact = Contact.create(params[:contact])
  if @contact.valid?
    redirect to("/")
  else
    erb :new
  end
end