class RequestsController < ApplicationController
  before_action :set_request, only: %i[show edit update destroy]

  def index
    @requests = Request.all
  end

  def show
  end

  def new
    @request = Request.new
  end

  def create
    @request = Request.new(request_params)
    @request.user = current_user

    if @request.save
      redirect_to request_path(@request)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @request.update(request_params)
    redirect_to request_path(@request)
  end

  def destroy
    @request.destroy
    redirect_to requests_path, status: :see_other
  end

  private

  def set_request
    @request = Request.find(params[:id])
  end

  def request_params
    params.require(:request).permit(:title, :description, :price)
  end
end
