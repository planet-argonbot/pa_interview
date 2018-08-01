# frozen_string_literal: true
class PostsController < ApplicationController
  def create
    render json: { path: post_path }
  end
end
