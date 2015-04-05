#!/usr/bin/env ruby

require 'json'
require 'open-uri'
 
# display_name = ARGV[0]
# membership_id = JSON.load(open("https://www.bungie.net/platform/destiny/SearchDestinyPlayer/All/#{display_name}/"))["Response"][0]["membershipId"]
# puts membership_id.to_s
 
themes = JSON.load(open("http://www.bungie.net/Platform/Destiny/Vanguard/Grimoire/Definition/"))["Response"]["themeCollection"]
 
themes.each do |theme|
  page_collections = theme["pageCollection"]
  page_collections.each do |page_collection|
    card_collections = page_collection["cardCollection"]
    card_collections.each do |card|
      if /Ghost Fragment/.match(card["cardName"])
        #puts "card_id: #{card["cardId"]}, card_name: #{card["cardName"]}"
        Ghost.create(:card_id => card["cardId"], :planet => "", :location => "")
      end
    end
  end
end
