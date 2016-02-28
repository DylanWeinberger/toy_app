class CommentsDonAndSeeksController < ApplicationController
	def new
		@comment = CommentsDonAndSeek.new
	end

	def create
		@comment = CommentsDonAndSeek.new(comment_params)
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
		params.require(:comments_don_and_seek).permit(:donator_id, :organization_id, :don_and_seek_connect_id, :body)
	end	
end
