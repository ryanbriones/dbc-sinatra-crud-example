# "INDEX", part of "R" in CRUD
get '/' do
  @contacts = Contact.all
  erb :index
end

# "NEW", part of the C in CRUD
get '/contacts/new' do
  erb :new
end

# "CREATE", part of the C in CRUD
post '/contacts' do
  @contact = Contact.create(params[:contact])
  if @contact.valid?
    redirect to("/")
  else
    erb :new
  end
end

# "SHOW", part of the R in CRUD
get "/contacts/:id" do
  @contact = Contact.find(params[:id])
  erb :show_contact
end
