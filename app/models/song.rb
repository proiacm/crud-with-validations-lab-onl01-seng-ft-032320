class Song < ApplicationRecord
    validates :title, presence: true
    validates :title, uniqueness: :artist_name && :release_year
    validates :artist_name, presence: true 
    validates :release_year, numericality: { less_than_or_equal_to: Date.current.year }, presence: true, if: :is_released
    
    def is_released
        self.released == true
    end
end
