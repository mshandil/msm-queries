class DirectorsController < ApplicationController
  def index
    render({ :template => "director_template/list"})
  end
  
  def show
    the_id= params.fetch("the_id")
    matching_id= Director.where({:id => the_id})
    @the_director= matching_id.at(0)
    render({ :template => "director_template/showdetails"})
  end
end
