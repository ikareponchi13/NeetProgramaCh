class CommentController < ApplicationController
    def create
        @comment = Comment.new(params[:comment].permit(:post_id, :name, :body))
        @comment.save
        redirect_to posts_show_path(params[:comment]['post_id'])
    end
end
