class Page < ActiveRecord::Base
  validates :title , presence: true , length: {minimum: 3, maximum: 40}
  validates :description , presence: true , length: {minimum: 5, maximum: 400}
end