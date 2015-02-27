class MoviesController < ApplicationController
	def index
		@movies = Movie.all
	end
	
	def new
		#default: render 'new' template
	end

	def create
		@movie = movie.create!(params[:movie])
		flash[:notice] = "#{@movie.title} was succesfully created."
		redirect_to movies_path
	end 
	
	def edit 
		@movie = Movie.find params[:id]
	end

	def update
		@movie = Movie.find params[:id]
		@movie.update_attributes!(params[:movie])
		flash[:notice] = "#{@movie.title} was succesfully updated."
		redirect_to movie_path(@movie)
	end
end

