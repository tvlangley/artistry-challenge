class Artist < ApplicationRecord
    has_many :artist_instruments
    has_many :instruments, through: :artist_instruments
  
    # VALIDATING: 
    # name --> presence 
    # title --> uniqueness
    # age --> greater than 90
  
    validates :name, presence: true
    validates :title, uniqueness: true
    validates :age, numericality: {greater_than: 90}
  end
