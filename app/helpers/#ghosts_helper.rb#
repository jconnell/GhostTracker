module GhostsHelper
  require 'json'
  require 'open-uri'

  def membership_id_for_guardian(platform, guardian)
    if platform == 'xbl'
      system = '1'
    else
      system = '2'
    end

    response = JSON.load(open("https://www.bungie.net/platform/destiny/SearchDestinyPlayer/#{system}/#{guardian}/"))["Response"]
    if response == []
      return nil
    else
      return response[0]["membershipId"]
    end
  end

  def cards_for_guardian(platform, membership_id)
    if platform == 'xbl'
      system = '1'
    else
      system = '2'
    end

    cards = []
     
    url = "http://www.bungie.net/Platform/Destiny/Vanguard/Grimoire/#{system}/#{membership_id}/"
    response = JSON.load(open(url))["Response"]
    response["data"]["cardCollection"].each do |card|
      cards << card["cardId"]
    end
    return cards
  end

  def determine_cards_obtained(cards)
    
    cards_obtained = {}
    
    Ghost.all.each do |ghost_card|
      if cards.include? ghost_card.card_id
        cards_obtained[ghost_card.card_id] = true
      else
        cards_obtained[ghost_card.card_id] = false
      end
    end

    return cards_obtained
  end
        

end
