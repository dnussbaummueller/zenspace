if @review.persisted?
  json.form render(partial: "reviews/form", formats: :html, locals: {teacher: @teacher, review: Review.new})
  json.inserted_item render(partial: "teachers/review", formats: :html, locals: {review: @review})
else
  json.form render(partial: "reviews/form", formats: :html, locals: {teacher: @teacher, review: @review})
end
