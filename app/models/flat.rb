class Flat < ApplicationRecord
  validates :name, presence: true

  # def self.query(query)
  #   if query
  #     self.where("flat.name LIKE ?", "%#{query}%")
  #   else
  #     @flats = Flat.all
  #   end
  # end
end
