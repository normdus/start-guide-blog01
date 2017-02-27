class ArticlesController < ApplicationController

	# Action order index, show, new, edit, create, update, destroy.
	# These are public methods and must be coded before private methods.

	
	# list all the articles. The route for this:

	# 	articles GET /article(.:format) articles#index <----

	# The route with articles#index takes us to this controller 
	# for the index action. This is all rails convention. 
	# follow the convention and shit works! How easy is that!

	# Next we need to create a view named index.html.erb. Again this is
	# another Rails convention.
	def index
		@article = Article.all
	end

	# We use Article.find to find the article we're interested in, 
	# passing in the params[:id] to get the :id parameter from the request.
	# We also use an instance variable (prefixed with @ to hold a 
	# reference to the article object.)
	def show
		@article = Article.find(params[:id])
	end	

	# Not sure why there is nothing in the new action?
	def new
	end

	def create
		@article = Article.new(article_params)

		@article.save
		redirect_to @article		
	end

	# private methods can only be used inside a class.
	# Strong Parameters for security.
	private
		def article_params
			params.require(:article).permit(:title, :text)
		end
end
