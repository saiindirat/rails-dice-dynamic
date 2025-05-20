Rails.application.routes.draw do
  # Static route for homepage
  get("/", { :controller => "dice", :action => "home" })

  # Dynamic route for dice roll
  get("/dice/:num_dice/:num_sides", { :controller => "dice", :action => "roll" })
end
