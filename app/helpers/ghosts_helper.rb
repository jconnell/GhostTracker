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

  def determine_ghosts_obtained(cards)
    
    ghosts_obtained = {}
    
    Ghost.all.each do |ghost|
      if !ghosts_obtained.has_key? ghost.planet
        ghosts_obtained[ghost.planet] = {}
      end

      if cards.include? ghost.card_id
        ghosts_obtained[ghost.planet][ghost] = true
      else
        ghosts_obtained[ghost.planet][ghost] = false
      end
    end

    return ghosts_obtained
  end
        

end
