Rails.application.routes.draw do
get("/rock", {controller: => "zebra", action: => "giraffe"})
get("/paper", {controller: => "zebra", action: => "elephant"})
get("/scissors", {controller: => "zebra", action: => "lion"})
root "zebra#index"

end
