Rails.application.routes.draw do

	get "/blogs" => "blogs#index"
	get "/blogs/new" => "blogs#new"
	post "/blogs" => "blogs#create"
	get "/blogs/:id" => "blogs#show"
end
