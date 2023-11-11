class MoviesController < ApplicationController
  def index
    render({ :template => "movies_template/list"})
  end

  def show
    the_id= params.fetch("the_id")
    matching_id= Movie.where({:id => the_id})
    @the_movie= matching_id.at(0)
    render({ :template => "movies_template/showdetails"})
  end
end
