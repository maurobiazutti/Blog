class HomeController < ApplicationController
  # before_action :set_categories
  # before_action :authenticate_user!
  # before_action :set_post
  before_action :set_post, only: %i[ show edit update destroy ]
  

  def index
    @posts = Post.all.order(created_at: :desc)

  end
end
