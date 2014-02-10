class ComicsController < ApplicationController

	def index
		@comics = Comic.all
	end

	def show
		the_comic_id = params["comic_id"]

		@comic = Comic.find_by :id => the_comic_id
	end

	def create
		c = Comic.new
		c.title = params["comic"]["title"]
		c.summary = params["comic"]["summary"]
		c.image_url = params["comic"]["image_url"]
		c.save
		redirect_to '/comics'
	end

	def rip
		the_comic_id = params["comic_id"]

		c = Comic.find_by(:id => the_comic_id)
		c.destroy

		redirect_to '/comics'
	end

	def new
		@comic = Comic.new
	end



end