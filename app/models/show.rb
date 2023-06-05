class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list 
    actors = []
    self.actors.each do |actor|
        actors << "#{actor.full_name}"
    end
    actors
  end
  
end