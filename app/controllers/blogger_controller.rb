class BloggerController < ApplicationController
  def index
  	@blogs = Blog.all
  end
end
