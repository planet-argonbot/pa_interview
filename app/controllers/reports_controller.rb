# frozen_string_literal: true
class ReportsController < ApplicationController
  def create
    render json: { report: {id: rand(100000), revenue: rand(100000), totalPurchases: rand(100000)} }
  end
end
