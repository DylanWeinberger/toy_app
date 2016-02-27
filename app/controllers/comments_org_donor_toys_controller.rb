class CommentsOrgDonorToysController < ApplicationController
	def new
		@comment = CommentsOrgDonorToy.new
	end

	def create
		@comment = CommentsOrgDonorToy.new(comment_params)
			if @comment.save
				flash[:notice] = "Your comment has been saved."
				redirect_to :back
			else
				flash[:notice] = "There was a problem creating your comment."
				redirect_to :back
			end
	end


	private

	def comment_params
		params.require(:comments_org_donor_toy).permit(:donator_id, :organization_id, :org_and_toy_connect_id, :body)
	end
end
