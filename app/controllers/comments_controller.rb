class CommentsController < ApplicationController
    def create
        comment = Comment.new(comment_params)
        comment.save
        redirect_to comment.post
    end

    private
    def comment_params
        params.require(:comment).permit(:content, :post_id, :user_id, user_attributes: [:username])
    end

end