class Membership < ApplicationRecord
	belongs_to :song
	belongs_to :tape
end
