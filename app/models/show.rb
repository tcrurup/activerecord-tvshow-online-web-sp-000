class Show < ActiveRecord::Base
  
  def self.highest_rating
    Show.maximum(:rating)
  end
  
  def self.least_popular_show
  end
  
  def lowest_rating
  end
  
  def self.most_popular_show
    binding.pry
    Show.where("rating = ?", self.highest_rating).first
  end
  
  def popular_shows
  end
  
  def ratings_sum
  end
  
  def shows_in_alphabetical_order
  end
end