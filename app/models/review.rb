class Review < ActiveRecord::Base
  belongs_to :restaurant

  validates :rating, presence: true,
            :inclusion => { :in => 0..5,
            :message => " should be between 0 to 5" }

  validates :comment, presence: true
end
