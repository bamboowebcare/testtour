class CommentsController < ApplicationController
  before_action :authenticate_user!, :except => [:show, :index] 

  def index
    @comments = Comment.all
  end

  def new
  end
  
  def create
   @post = Post.find(params[:post_id])
   @comment = @post.comments.new(comment_params)
   @comment.user_id = current_user.id
      
  if @comment.save
   respond_to do|format|
    format.html { redirect_to post_path(@post)}
        format.json { render :show, status: :created, location: @post }
      end
     end
  end
  
  def edit
  end

 private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end
    
    def set_user
      @user = current_user
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:body, :post_id, :user_id)
    end
end
