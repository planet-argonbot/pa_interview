# frozen_string_literal: true
class ReportsController < ApplicationController
  def create
    render json: { report: {id: rand(100000), views: rand(100000), clicks: rand(100000)} }
  end
end
