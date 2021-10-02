class CommentsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    # GET /comments/:id
        def show
        comment = Comment.find_by(id: params[:id])
          render json: comment, include: [:blogpost, :user]
      end

      # Post/comment/:id
    def create
        comment = Comment.create(comment_params)
        render json: comment, status: :created
      end

       # PUT /comments/:id
    def update
        comment = Comment.find_by(id: params[:id])
        comment.update(comment_params)
        render json: comment
      end

      # DELETE /comments/:id
    def destroy
    comment = Comment.find_by(id: params[:id])
    comment.destroy
    head :no_content
    end

    private

    def render_not_found_response
        render json: { error: "User not found" }, status: :not_found
      end
    
      def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors }, status: :unprocessable_entity
      end

    def comment_params
        params.permit(:content, :user, :blogpost)
      end

end
