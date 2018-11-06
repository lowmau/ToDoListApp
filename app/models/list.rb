class List < ApplicationRecord
	has_many :user_lists
	has_many :users, through: :user_lists

	def validate_list(params)
		@valid = List.find(params)
		@f = @valid.user_lists.first
		if @f.nil?
			return false
		else
			return true
		end
	end
end
