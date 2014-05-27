class CommentsController < ApplicationController
before_action :authenticate_user!, :except => [:show, :index] 

  # GET /comments
  # GET /comments.json
  def index
    @comments = Comment.all
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
  end

  # GET /comments/new
  def new    
  end

  # GET /comments/1/edit
  def edit
  end

  # POST /comments
  # POST /comments.json
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
  
  # PATCH/PUT /comments/1
  # PATCH/PUT /comments/1.json
  def update

    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    @comment.user_id = current_user.id
   
    if @comment.update(comment_params)
    	respond_to do|format|
	    format.html { redirect_to post_path(@post)}
        format.json { render :show, status: :created, location: @post }
      end
     end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to comments_url, notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
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
