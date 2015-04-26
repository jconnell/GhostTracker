module GhostsHelper
  require 'json'
  require 'open-uri'

  def membership_id_for_guardian(platform, guardian)
    
    system = platform == 'xbl' ? '1' : '2'

    response = JSON.load(open("https://www.bungie.net/platform/destiny/SearchDestinyPlayer/#{system}/#{guardian}/"))["Response"]

    return response == [] ? nil : response[0]["membershipId"]

  end

  def cards_for_guardian(platform, membership_id)

    system = platform == 'xbl' ? '1' : '2'

    cards = []
     
    url = "http://www.bungie.net/Platform/Destiny/Vanguard/Grimoire/#{system}/#{membership_id}/"
    response = JSON.load(open(url))["Response"]
    response["data"]["cardCollection"].each do |card|
      cards << card["cardId"]
    end
    return cards
  end

  def determine_ghosts_obtained(cards, planet = nil)
    
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
 
    return planet ? ghosts_obtained[planet] : ghosts_obtained
  end

end
