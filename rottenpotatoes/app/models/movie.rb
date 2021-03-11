class Movie < ActiveRecord::Base
    def self.get_similar_movies movie_id
        director = Movie.find_by(id: movie_id).director
        
        return nil if director.blank? || director.nil?
        
        Movie.where(director: director)
    end
end
