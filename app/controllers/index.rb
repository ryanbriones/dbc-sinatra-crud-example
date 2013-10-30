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
  @contact = Contact.new(params[:contact])
  if @contact.save
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

# "EDIT", part of the U in CRUD
get "/contacts/:id/edit" do
  @contact = Contact.find(params[:id])
  erb :edit_contact_form
end

# "UPDATE", part of the U in CRUD
post "/contacts/:id" do
  @contact = Contact.find(params[:id])
  if @contact.update_attributes(params[:contact])
    redirect to("/")
  else
    erb :edit_contact_form
  end
end

# "DESTROY", the D in CRUD
post "/contacts/:id/destroy" do
  @contact = Contact.find(params[:id])
  @contact.destroy
  if request.xhr?
    "ok"
  else
    redirect to("/")
  end
end
