module GhostsHelper
  require 'json'
  require 'open-uri'

  def membership_id_for_guardian(platform, guardian)
    system = platform == 'xbl' ? '1' : '2'

    response = JSON.load(open("https://www.bungie.net/platform/destiny/SearchDestinyPlayer/#{system}/#{guardian}/"))['Response']

    response == [] ? nil : response[0]['membershipId']
  end

  def cards_for_guardian(platform, membership_id)
    system = platform == 'xbl' ? '1' : '2'

    cards = []

    url = "http://www.bungie.net/Platform/Destiny/Vanguard/Grimoire/#{system}/#{membership_id}/"
    response = JSON.load(open(url))['Response']
    response['data']['cardCollection'].each do |card|
      cards << card['cardId']
    end
    cards
  end

  def determine_ghosts_obtained(cards, planet = nil)
    ghosts_obtained = {}

    Ghost.all.each do |ghost|
      ghosts_obtained[ghost.planet] = {} unless ghosts_obtained.key? ghost.planet

      if cards.include? ghost.card_id
        ghosts_obtained[ghost.planet][ghost] = true
      else
        ghosts_obtained[ghost.planet][ghost] = false
      end
    end

    planet ? ghosts_obtained[planet] : ghosts_obtained
  end

  def get_ghosts_count(cards)
    ghosts_count = {}

    Ghost.all.each do |ghost|
       
      if ghosts_count.has_key?(ghost.planet)
        if cards.include? ghost.card_id
          ghosts_count[ghost.planet] += 1
        end
      else
        if cards.include? ghost.card_id
          ghosts_count[ghost.planet] = 1
        else
          ghosts_count[ghost.planet] = 0
        end
      end

    end

    ghosts_count
  end
end
