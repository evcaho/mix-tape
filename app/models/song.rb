class Song < ApplicationRecord
	has_many :memberships
	has_many :tapes, through: :memberships
end
