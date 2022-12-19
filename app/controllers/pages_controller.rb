class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @categories = Category.last(4)
    @requests = Request.last(3)
  end
end
