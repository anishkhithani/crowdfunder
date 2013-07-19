class PledgesController < ApplicationController
  def new
    @pledge = Pledge.new
  end

  def create
    @pledge = Pledge.new(params[:plegde])
    if @pledge.save
      redirect_to :back, :notice => "Thanks for your pledge!"

    else
      flash[:alert] = "Try again"
      render :new
  end
end
end

