class GhostsController < ApplicationController
  
  def collect
    redirect_to "/ghosts/#{params[:platform]}/#{params[:guardian]}"
  end

  def status
    @platform = params[:platform]
    @guardian = params[:guardian]

    membership_id = membership_id_for_guardian(@platform, @guardian)

    if membership_id == nil
      flash[:error] = "Couldn't find <b>#{@guardian}</b> on <b>#{@platform.upcase}</b>!"
      redirect_to :root
    else
      cards = cards_for_guardian(@platform, membership_id)
      @cards_obtained = determine_cards_obtained(cards)
    end
  end
end
