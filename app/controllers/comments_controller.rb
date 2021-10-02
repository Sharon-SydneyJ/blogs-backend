class CommentsController < ApplicationController


        def show
        comment = Comment.find_by(id: params[:id])
          render json: comment, include: [:blogpost, :user]
      end

      # Post/users/:id
    def create
        comment = Comment.create(comment_params)
        render json: comment, status: :created
      end

end
