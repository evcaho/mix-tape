class Song < ApplicationRecord
	has_many :memberships
	has_many :tapes, through: :memberships
	accepts_nested_attributes_for :tapes

end
