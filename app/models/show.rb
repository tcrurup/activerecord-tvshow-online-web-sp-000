class Show < ActiveRecord::Base
  
  def self.highest_rating
    Show.maximum(:rating)
  end
  
  def self.least_popular_show
    Show.where("rating = ?", self.lowest_rating).first
  end
  
  def self.lowest_rating
    Show.minimum(:rating)
  end
  
  def self.most_popular_show
    Show.where("rating = ?", self.highest_rating).first
  end
  
  def popular_shows
  end
  
  def ratings_sum
    Show.sum(:ratings)
  end
  
  def shows_in_alphabetical_order
  end
end