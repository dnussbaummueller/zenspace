class ReviewsController < ApplicationController
  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    if @review.reviewable.is_a?(Teacher)
      redirect_to teacher_path(@review.reviewable)
    elsif @review.reviewable.is_a?(YogaStudio)
      redirect_to yoga_studio_path(@review.reviewable)
    end
  end

  def create
    @review = Review.new(review_params)
    if params[:teacher_id].present?
      @review.reviewable = Teacher.find(params[:teacher_id])
    elsif params[:yoga_studio_id].present?
      @review.reviewable = YogaStudio.find(params[:yoga_studio_id])
    else
      # handle error: unknown reviewable type
    end
    if @review.save
      flash[:success] = "Review created successfully"
      if @review.reviewable.is_a?(Teacher)
        redirect_to teacher_path(@review.reviewable)
      elsif @review.reviewable.is_a?(YogaStudio)
        redirect_to yoga_studio_path(@review.reviewable)
      end
    else
      redirect_to root_path
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
