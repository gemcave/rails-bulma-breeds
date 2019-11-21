class Horse < ApplicationRecord
  belongs_to :breed

	validates :name, presence: true
	
	has_one_attached :image
end
