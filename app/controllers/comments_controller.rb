class CommentsController < ApplicationController

  http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy

  def create
    @product = Product.find(params[:product_id])
    @comment = @product.comments.create(comment_params)
    redirect_to product_path(@product)
  end
  
  def show
    @product = Product.find(params[:id])
    redirect_to product_path(@product)
  end
  
  def destroy
    @product = Product.find(params[:product_id])
    @comment = @product.comments.find(params[:id])
    @comment.destroy
    redirect_to product_path(@product)
  end
 
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
