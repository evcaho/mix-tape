class Tape < ApplicationRecord
	has_many :memberships
	has_many :songs, through: :memberships
end
