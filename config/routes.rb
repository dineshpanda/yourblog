Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root :to => "articles#index"
  # Routes for the Post resource:

  # CREATE
  get("/posts/new", { :controller => "posts", :action => "new_form" })
  post("/create_post", { :controller => "posts", :action => "create_row" })

  # READ
  get("/posts", { :controller => "posts", :action => "index" })
  get("/posts/:id_to_display", { :controller => "posts", :action => "show" })

  # UPDATE
  get("/posts/:prefill_with_id/edit", { :controller => "posts", :action => "edit_form" })
  post("/update_post/:id_to_modify", { :controller => "posts", :action => "update_row" })

  # DELETE
  get("/delete_post/:id_to_remove", { :controller => "posts", :action => "destroy_row" })

  #------------------------------

  # Routes for the Article resource:

  # CREATE
  get("/articles/new", { :controller => "articles", :action => "new_form" })
  post("/create_article", { :controller => "articles", :action => "create_row" })

  # READ
  get("/articles", { :controller => "articles", :action => "index" })
  get("/articles/:id_to_display", { :controller => "articles", :action => "show" })

  # UPDATE
  get("/articles/:prefill_with_id/edit", { :controller => "articles", :action => "edit_form" })
  post("/update_article/:id_to_modify", { :controller => "articles", :action => "update_row" })

  # DELETE
  get("/delete_article/:id_to_remove", { :controller => "articles", :action => "destroy_row" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
