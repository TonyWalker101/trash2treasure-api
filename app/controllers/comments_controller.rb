class CommentsController < ApplicationController
  def index
    comments = Comment.all
    render json: comments.to_json
  end

  def new
    user = User.find_by(id: 1)
    comment = user.comments.new(
      donation_id: params[:donation_id],
      comment: params[:comment],
      created_at: Time.now
    )
    comment.save!
  end
end
