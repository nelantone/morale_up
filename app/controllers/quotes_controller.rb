class QuotesController < ApplicationController
  before_action :set_quote

  def index
  end

  def refresh_quote
    render partial: 'refresh_quote', locals: { sample_quote: @sample_quote }
  end

  private
  def comment_params
    params.require(:quote).permit(:quote, :author, :genre)
  end

  def set_quote
    #Active::Record method
    @sample_quote = Quote.offset(rand(Quote.count)).first
  end
end
