require 'test_helper'

class MembershipsControllerTest < ActionDispatch::IntegrationTest
	def setup
		@membership = Membership.new(membership_params)
	end

	
end
