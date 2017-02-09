class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @book = Book.find(params[:book_id])
  end

  def create
    @book = Book.find(params[:book_id])
    @review = @book.reviews.new(review_params)
    if @review.save
      redirect_to book_path(@book.id)
    else
      render :new
    end
  end

  def edit
    @review = Review.find(params[:id])
    @book = Book.find(@review.book_id)
  end

  def update
    @review = Review.find(params[:id])
    @book = Book.find(@review.book_id)
    if @review.update(review_params)
      redirect_to book_path(@review.book_id)
    else
      render :edit
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @book = Book.find(@review.book_id)
    @review.destroy
    redirect_to book_path(@book.id)
  end

private
  def review_params
    params[:review][:rating] = params[:rating].to_i
    params.require(:review).permit(:review, :author, :tagline, :rating)
  end
end
