class AuthorsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  def index
    authors = Author.all 
    render json: authors, include: { profile: { only: :name }, posts: { include: :tags, only: [:title, :short_content] } }
  end

  def show
    author = Author.find(params[:id])
    render json: author, include: { profile: { only: :name }, posts: { include: :tags, only: [:title, :short_content] } }
  end

  private

  def render_not_found_response
    render json: { error: "Author not found" }, status: :not_found
  end

end
