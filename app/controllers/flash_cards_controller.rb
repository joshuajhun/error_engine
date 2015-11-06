class FlashCardsController < ApplicationController
  def new
    @flash_card = FlashCard.new
  end

  def create
    @topic = Topic.find(params[:topic_id])
    @flash_card = @topic.flash_cards.new(flash_card_params)
    if @flash_card.save
      redirect_to topic_path(params[:topic_id])
    else
    end
  end

  def show
  @flash_card = FlashCard.find(params[:id])
  end

  private

  def flash_card_params
    params.require(:flash_card).permit(:question,:answer,:topic_id)
  end
end
