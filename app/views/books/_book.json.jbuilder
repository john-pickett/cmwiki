json.extract! book, :id, :title, :author, :publish_date, :category, :setting, :recommended_age, :sensitive_content, :book_synopsis, :created_at, :updated_at
json.url book_url(book, format: :json)
