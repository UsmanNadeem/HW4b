# Add a declarative step here for populating the DB with movies.

Given /the following movies exist/ do |movies_table|
  movies_table.hashes.each do |movie|
    Movie.create movie  
  end
end

Then /the director of "(.*)" should be "(.*)"/ do  |e1, e2|
	movie = Movie.find_by_title(e1)
	assert movie.director == e2
end