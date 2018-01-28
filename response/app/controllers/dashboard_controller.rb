class DashboardController < ApplicationController
  def index
    @content = {
      categories: Category.all,
      answer: Answer.new
    }
  end
end
