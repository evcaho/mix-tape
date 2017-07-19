class Tape < ApplicationRecord
	has_many :memberships
	has_many :songs, through: :memberships
	accepts_nested_attributes_for :songs
end
