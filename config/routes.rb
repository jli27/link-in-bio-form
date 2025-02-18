Rails.application.routes.draw do

  get("/", { :controller => "items", :action => "index" })

  get("/insert_item", { :controller => "items", :action => "update" })

  get("/backdoor", { :controller => "forms", :action => "new_form" })
end
