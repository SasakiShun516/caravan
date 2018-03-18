class BlogsController < ApplicationController

	def index
		@blogs = Blog.all
	end

	def new
		@blog = Blog.new
	end

	def show
		@blog = Blog.find(params[:id])
	end

	def create
	blog = Blog.new(blog_params)
	blog.save
	redirect_to "/blogs"#入力データの保存後新規投稿画面へリダイレクト
	end	

	private

	def blog_params
		params.require(:blog).permit(:title,:body,:category,)
	end
end