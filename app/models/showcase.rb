class Showcase < ApplicationRecord
	has_many :comments, dependent: :destroy
end
