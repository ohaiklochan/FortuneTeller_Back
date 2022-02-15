class Api::V1::CookiesController < ApplicationController
  before_action :set_cookie, only: [:show, :update, :destroy]

  # GET /cookies
  def index
    @cookies = Cookie.all

    render json: { cookie: @cookies }
  end

  # GET /cookies/1
  def show
    @cookie = Cookies.find(params[:id])
    render json: { cookie: @cookies}
  end

  # POST /cookies
  def create
    @cookie = Cookie.new(cookie_params)

    if @cookie.save
      render json: @cookie, status: :created, location: @cookie
    else
      render json: @cookie.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cookies/1
  def update
    if @cookie.update(cookie_params)
      render json: @cookie
    else
      render json: @cookie.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cookies/1
  def destroy
    @cookie.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cookie
      @cookie = Cookie.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cookie_params
      params.require(:cookie).permit(:fortune, :meaning)
    end
end
