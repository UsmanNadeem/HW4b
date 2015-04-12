class Movie < ActiveRecord::Base

  attr_accessible :title, :rating, :description, :release_date, :director

  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
  def self.find_all_with_same_director _id
    me = Movie.find_by_id(_id)
  	@ret = Movie.find_all_by_director(me.director)
  end

end

