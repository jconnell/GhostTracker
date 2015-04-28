# spec/factories/ghosts.rb

FactoryGirl.define do
  factory :ghost do |f|
    f.card_id 777_777
    f.card_name 'Ghost Fragment: Testing'
    f.planet 'Uranus'
    f.location 'The Test Mountains'
    f.points 15
    f.missions 'Scale the Test Mountains'
  end
end
