module ReviewsHelper

	def has_reviews?
		user = current_user
		reviews = Review.where(user_id: user.id)

		if reviews.length > 0
			return true
		else
			return false
		end
	end

end
