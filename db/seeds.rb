#!/usr/bin/env ruby

# require 'json'
# require 'open-uri'

# # display_name = ARGV[0]
# # membership_id = JSON.load(open("https://www.bungie.net/platform/destiny/SearchDestinyPlayer/All/#{display_name}/"))["Response"][0]["membershipId"]
# # puts membership_id.to_s

# themes = JSON.load(open("http://www.bungie.net/Platform/Destiny/Vanguard/Grimoire/Definition/"))["Response"]["themeCollection"]

# themes.each do |theme|
#   page_collections = theme["pageCollection"]
#   page_collections.each do |page_collection|
#     card_collections = page_collection["cardCollection"]
#     card_collections.each do |card|
#       if /Ghost Fragment/.match(card["cardName"])
#         puts "Ghost.create(:card_id => #{card['cardId']}, :card_name => \"#{card['cardName']}\", :planet => \"\", :location => \"\")"
#         Ghost.create(:card_id => card["cardId"], :planet => "", :location => "")
#       end
#     end
#   end
# end

Ghost.create(card_id: 101_060, card_name: 'Ghost Fragment: Titan', planet: 'Mars', location: 'Trenchworks', points: 5, missions: 'Patrol, Cerberus Vae III (Strike)')
Ghost.create(card_id: 101_080, card_name: 'Ghost Fragment: Hunter', planet: 'Earth', location: 'Rocketyard', points: 5, missions: 'Patrol, The Devils Lair (Strike)')
Ghost.create(card_id: 101_100, card_name: 'Ghost Fragment: Warlock', planet: 'Tower', location: 'Tower North', points: 5, missions: 'Tower')
Ghost.create(card_id: 101_110, card_name: 'Ghost Fragment: Warlock 2', planet: 'Moon', location: 'Temple of Crota', points: 5, missions: 'Patrol, The Wakening, Chamber of Night')
Ghost.create(card_id: 102_040, card_name: 'Ghost Fragment: Human', planet: 'Earth', location: 'The Grottos', points: 5, missions: 'Patrol, The Warmind, Siege of the Warmind (The Dark Below)')
Ghost.create(card_id: 102_050, card_name: 'Ghost Fragment: Human 2', planet: 'Venus', location: 'The Shattered Coast', points: 5, missions: 'Patrol, A Strangers Call, The Archive, Ishtar Collective')
Ghost.create(card_id: 102_060, card_name: 'Ghost Fragment: Human 3', planet: 'Mars', location: 'The Buried City', points: 10, missions: 'Patrol, A Riding Tide')
Ghost.create(card_id: 102_130, card_name: 'Ghost Fragment: Human 4', planet: 'Mars', location: 'The Drift', points: 15, missions: 'Patrol, A Rising Tide')
Ghost.create(card_id: 102_070, card_name: 'Ghost Fragment: Awoken', planet: 'Mars', location: 'Valley of the Kings', points: 5, missions: 'Patrol, The Exclusion Zone, The Black Garden')
Ghost.create(card_id: 102_140, card_name: 'Ghost Fragment: Awoken 2', planet: 'Venus', location: 'Ishtar Commons', points: 5, missions: 'Patrol, The Archive, The Nexus (Strike)')
Ghost.create(card_id: 102_100, card_name: 'Ghost Fragment: Exo', planet: 'Mars', location: 'Overwatch', points: 5, missions: 'Patrol, The Buried City, Dust Palace (Strike)')
Ghost.create(card_id: 102_150, card_name: 'Ghost Fragment: Exo 2', planet: 'Venus', location: 'N/Gen Branch', points: 5, missions: 'Patrol, The Nexus (Strike)')
Ghost.create(card_id: 103_100, card_name: 'Ghost Fragment: Ghosts', planet: 'Venus', location: 'Waking Ruins', points: 5, missions: 'Patrol, Ishtar Collective, Eye of a Gate Lord')
Ghost.create(card_id: 301_010, card_name: 'Ghost Fragment: Abilities', planet: 'Earth', location: 'Forgotten Shore', points: 5, missions: 'Patrol, The Warmind, Siege of the Warmind (The Dark Below)')
Ghost.create(card_id: 302_110, card_name: 'Ghost Fragment: The Last Word', planet: 'Tower', location: 'Hall of Guardians', points: 5, missions: 'Tower')
Ghost.create(card_id: 302_120, card_name: 'Ghost Fragment: The Last Word 2', planet: 'Earth', location: 'Refinery', points: 5, missions: 'Patrol, The Devils Lair (Strike), Fist of Crota')
Ghost.create(card_id: 302_160, card_name: 'Ghost Fragment: Thorn', planet: 'Venus', location: 'Ember Caves', points: 5, missions: "Patrol, Scourge of Winter, Eye of a Gate Lord, Winter's Run (Strike)")
Ghost.create(card_id: 302_170, card_name: 'Ghost Fragment: Thorn 2', planet: 'Mars', location: 'Giants Pass', points: 5, missions: 'Patrol, The Exclusion Zone, The Black Garden')
Ghost.create(card_id: 302_130, card_name: 'Ghost Fragment: The Last Word 3', planet: 'Moon', location: 'Chamber of Night', points: 5, missions: 'The Wakening (Moon)')
Ghost.create(card_id: 103_030, card_name: 'Ghost Fragment: The Traveler', planet: 'Moon', location: 'Shrine of Oryx', points: 5, missions: 'Shrine of Oryx')
Ghost.create(card_id: 103_040, card_name: 'Ghost Fragment: The Traveler 2', planet: 'Mars', location: 'The Legions Keep', points: 5, missions: 'The Gardens Spire')
Ghost.create(card_id: 103_050, card_name: 'Ghost Fragment: The Traveler 3', planet: 'Earth', location: 'Skywatch', points: 10, missions: 'Patrol, The Last Array, The Will of Crota (Strike)')
Ghost.create(card_id: 108_020, card_name: 'Ghost Fragment: Future War Cult', planet: 'Mars', location: 'Firebase Rubicon', points: 10, missions: "Patrol, The Garden's Spire")
Ghost.create(card_id: 108_040, card_name: 'Ghost Fragment: Dead Orbit', planet: 'Moon', location: 'Hall of Wisdom', points: 10, missions: 'Patrol, Shrine of Oryx')
Ghost.create(card_id: 108_060, card_name: 'Ghost Fragment: New Monarchy', planet: 'Venus', location: 'Ishtar Academy', points: 10, missions: 'Patrol, A Strangers Call, The Archive')
Ghost.create(card_id: 104_020, card_name: 'Ghost Fragment: The Exo Stranger', planet: 'Earth', location: 'The Divide', points: 5, missions: 'Patrol, A Guardian Rises')
Ghost.create(card_id: 105_020, card_name: 'Ghost Fragment: The Queen', planet: 'Mars', location: 'Valley of the Kings', points: 10, missions: 'The Black Garden')
Ghost.create(card_id: 105_080, card_name: "Ghost Fragment: Queen's Brother", planet: 'Mars', location: 'Valley of the Kings', points: 10, missions: 'The Black Garden')
Ghost.create(card_id: 107_040, card_name: 'Ghost Fragment: Rasputin', planet: 'Moon', location: 'Chamber of Night', points: 5, missions: 'The Wakening (Moon)')
Ghost.create(card_id: 107_030, card_name: 'Ghost Fragment: Rasputin 2', planet: 'Earth', location: 'Seraphim Vault', points: 10, missions: 'Siege of the Warmind (Earth)')
Ghost.create(card_id: 107_020, card_name: 'Ghost Fragment: Rasputin 3', planet: 'Earth', location: 'Seraphim Vault', points: 15, missions: 'Siege of the Warmind (Earth)')
Ghost.create(card_id: 106_020, card_name: 'Ghost Fragment: Legends', planet: 'Venus', location: 'Hall of Whispers', points: 15, missions: 'Patrol, The Archive')
Ghost.create(card_id: 106_030, card_name: 'Ghost Fragment: Legends 2', planet: 'Earth', location: 'Forgotten Shore', points: 5, missions: 'Patrol, The Warmind, Siege of the Warmind (The Dark Below)')
Ghost.create(card_id: 106_040, card_name: 'Ghost Fragment: Legends 3', planet: 'Mars', location: 'The Hallows', points: 15, missions: 'Patrol, The Buried City, Dust Palace (Strike)')
Ghost.create(card_id: 106_050, card_name: 'Ghost Fragment: Mysteries', planet: 'Earth', location: 'The Divide', points: 10, missions: 'Patrol, A Guardian Rises')
Ghost.create(card_id: 106_060, card_name: 'Ghost Fragment: Mysteries 2', planet: 'Mars', location: 'The Valley of the Kings', points: 15, missions: 'Patrol, The Exclusion Zone')
Ghost.create(card_id: 207_020, card_name: 'Ghost Fragment: Fallen', planet: 'Earth', location: 'Mothyards', points: 5, missions: 'Patrol, The Dark Within, The Warmind')
Ghost.create(card_id: 207_030, card_name: 'Ghost Fragment: Fallen 2', planet: 'Earth', location: 'The Blast', points: 5, missions: 'Patrol, The Devils Lair (Strike), Fist of Crota')
Ghost.create(card_id: 201_020, card_name: 'Ghost Fragment: Hive', planet: 'Moon', location: 'Archers Line', points: 5, missions: "Patrol, The Dark Beyond, The World's Grave, The Sword of Crota, The Wakening")
Ghost.create(card_id: 201_154, card_name: 'Ghost Fragment: Hive 3', planet: 'Earth', location: 'Seraphim Vault', points: 5, missions: 'Siege of the Warmind (Earth)')
Ghost.create(card_id: 201_158, card_name: 'Ghost Fragment: Hive 4', planet: 'Moon', location: 'Chamber of Night', points: 10, missions: 'The Wakening (Moon)')
Ghost.create(card_id: 203_020, card_name: 'Ghost Fragment: Vex', planet: 'Venus', location: 'Ishtar Commons', points: 5, missions: 'Patrol, The Archive, The Nexus (Strike)')
Ghost.create(card_id: 203_030, card_name: 'Ghost Fragment: Vex 2', planet: 'Venus', location: 'Campus 9', points: 5, missions: 'Patrol, Ishtar Collective, Eye of a Gate Lord')
Ghost.create(card_id: 203_040, card_name: 'Ghost Fragment: Vex 3', planet: 'Venus', location: 'Dig Site 4', points: 10, missions: 'The Nexus (Strike)')
Ghost.create(card_id: 205_020, card_name: 'Ghost Fragment: Cabal', planet: 'Mars', location: 'The Barrens', points: 5, missions: 'Patrol, The Buried City, The Black Garden')
Ghost.create(card_id: 205_030, card_name: 'Ghost Fragment: Cabal 2', planet: 'Mars', location: 'Iron Line', points: 5, missions: "Patrol, The Garden's Spire, Cerberus Vae III (Strike)")
Ghost.create(card_id: 209_020, card_name: 'Ghost Fragment: Darkness', planet: 'Earth', location: 'The Steppes', points: 5, missions: 'Patrol, Restoration')
Ghost.create(card_id: 209_030, card_name: 'Ghost Fragment: Darkness 2', planet: 'Moon', location: 'The Hellmouth', points: 5, missions: 'Patrol, The Sword of Crota, Chamber of Night')
Ghost.create(card_id: 209_050, card_name: 'Ghost Fragment: Darkness 3', planet: 'Earth', location: 'Lunar Complex', points: 10, missions: 'Patrol, The Dark Within, The Last Array')
Ghost.create(card_id: 209_060, card_name: 'Ghost Fragment: Darkness 4', planet: 'Venus', location: 'Endless Steps', points: 15, missions: 'Patrol, Eye of a Gate Lord')
Ghost.create(card_id: 401_020, card_name: 'Ghost Fragment: Mercury', planet: 'Moon', location: 'The Gatehouse', points: 5, missions: 'Patrol, The Sword of Crota, Shrine of Oryx, The Summoning Pits (Strike)')
Ghost.create(card_id: 402_030, card_name: 'Ghost Fragment: Venus', planet: 'Venus', location: 'Ishtar Cliffs', points: 5, missions: 'Patrol, Ishtar Collective')
Ghost.create(card_id: 402_040, card_name: 'Ghost Fragment: Ishtar Sink', planet: 'Venus', location: 'Headlands', points: 5, missions: "Patrol, Ishtar Collective, Scourge of Winter, The Archive, Eye of a Gate Lord, Winter's Run (Strike)")
Ghost.create(card_id: 404_030, card_name: 'Ghost Fragment: Earth', planet: 'Earth', location: 'The Divide', points: 5, missions: 'Patrol, A Guardian Rises')
Ghost.create(card_id: 404_040, card_name: 'Ghost Fragment: Old Russia (Cosmodrome)', planet: 'Earth', location: 'The Divide', points: 5, missions: 'Patrol, A Guardian Rises')
Ghost.create(card_id: 404_050, card_name: 'Ghost Fragment: Hive 2 (Cosmodrome 2)', planet: 'Earth', location: 'Mothyards', points: 5, missions: 'Patrol, The Warmind, Siege of the Warmind (The Dark Below)')
Ghost.create(card_id: 403_040, card_name: 'Ghost Fragment: The Golden Age', planet: 'Mars', location: 'Dust Palace', points: 5, missions: 'Patrol, The Buried City, Dust Palace (Strike)')
Ghost.create(card_id: 403_050, card_name: 'Ghost Fragment: The Golden Age 2', planet: 'Mars', location: 'Freehold Station', points: 10, missions: 'Patrol, A Rising Tide')
Ghost.create(card_id: 403_070, card_name: 'Ghost Fragment: The Dark Age', planet: 'Earth', location: 'Mothyards', points: 5, missions: 'Patrol, The Warmind, The Dark Within, The Last Array, Siege of the Warmind (The Dark Below)')
Ghost.create(card_id: 403_080, card_name: 'Ghost Fragment: The Dark Age 2', planet: 'Venus', location: 'Winters Lair', points: 10, missions: "Patrol, Scourge of Winter, Winter's Run (Strike)")
Ghost.create(card_id: 403_100, card_name: 'Ghost Fragment: The City Age', planet: 'Tower', location: 'Tower Watch', points: 5, missions: 'Tower')
Ghost.create(card_id: 403_110, card_name: 'Ghost Fragment: The City Age 2', planet: 'Tower', location: 'Travelers Walk', points: 10, missions: 'Tower')
Ghost.create(card_id: 405_030, card_name: 'Ghost Fragment: Moon', planet: 'Moon', location: 'Archers Line', points: 5, missions: "Patrol, The Dark Beyond, The World's Grave, The Wakening")
Ghost.create(card_id: 405_040, card_name: 'Ghost Fragment: The Ocean of Storms', planet: 'Moon', location: 'Anchor of Light', points: 5, missions: 'Patrol, The Dark Beyond')
Ghost.create(card_id: 406_030, card_name: 'Ghost Fragment: Mars', planet: 'Mars', location: 'Scablands', points: 5, missions: "Patrol, The Exclusion Zone, A Rising Tide, The Garden's Spire, The Black Garden")
Ghost.create(card_id: 406_040, card_name: 'Ghost Fragment: Meridian Bay', planet: 'Mars', location: 'Tharsis Junction', points: 5, missions: 'Patrol, A Rising Tide')
Ghost.create(card_id: 408_020, card_name: 'Ghost Fragment: Jupiter', planet: 'Earth', location: 'Terrestrial Complex', points: 5, missions: 'Patrol, The Warmind, The Will of Crota (Strike)')
Ghost.create(card_id: 409_020, card_name: 'Ghost Fragment: Saturn', planet: 'Moon', location: 'Circle of Bones', points: 5, missions: "Patrol, The World's Grave, Shrine of Oryx, The Summoning Pits (Strike)")
