class CommentsDonAndSeeksController < ApplicationController
	def new
		@comment = CommentsDonAndSeek.new
	end

	def create
		@comment = CommentsDonAndSeek.new(comment_params)
		# create conditionals to see if a donator or a org made the comment
			if @comment.save
				flash[:notice] = "Your comment has been saved."
				if @comment.donator_id != nil
					UserNotifier.send_comment_email(@comment.don_and_seek_connect.organization).deliver
					redirect_to :back
				elsif @comment.organization_id != nil
					UserNotifier.send_comment_email(@comment.don_and_seek_connect.donator).deliver
					redirect_to :back	
				end	
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
