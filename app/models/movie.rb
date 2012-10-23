class Movie < ActiveRecord::Base
  def self.get_ratings
    Movie.select(:rating).collect(&:rating).uniq.sort
  end
end


