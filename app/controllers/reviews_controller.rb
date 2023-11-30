class ReviewsController < ApplicationController
def create
  @review = Review.new
  @booking = Booking.new
  @review = Review.new(review_params)
  @president = President.find(params[:president_id])
  @review.president = @president
  @review.user = current_user
  @marker =[
    {
      lat: @president.latitude,
      lng: @president.longitude,
      info_window_html: render_to_string(partial: "presidents/info_window", locals: { president: @president }),
      marker_html: render_to_string(partial: "presidents/marker")
  }]
  if @review.save
    redirect_to president_path(@president), notice: 'Review was successfully created.'
  else
    render 'presidents/show', status: :unprocessable_entity
  end
end

def destroy
  @review = Review.find(params[:id])
  @review.destroy
  redirect_to president_path(@review.president)
end

private
def review_params # strong params
  params.require(:review).permit(:rating, :comment)
end
end
