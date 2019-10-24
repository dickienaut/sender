Climber.destroy_all
Climb.destroy_all
Tick.destroy_all
Comment.destroy_all
Article.destroy_all
Subscription.destroy_all


50.times do
  Climber.create(name: Faker::Name.unique.name)
end


100.times do
  Climb.create(
    name: Faker::Books::CultureSeries.unique.culture_ship,
    location: Faker::Nation.capital_city,
    length: rand(100...3000),
    difficulty: rand(0..31)
    )
end


100.times do
  Tick.create(
    climber_id: Climber.all.sample.id,
    climb_id: Climb.all.sample.id
  )
end


100.times do
  Comment.create(
    climber_id: Climber.all.sample.id,
    climb_id: Climb.all.sample.id,
    text: Faker::Hipster.sentence
  )
end


100.times do
  Article.create(
    genre: Faker::Book.genre,
    story: Faker::Hipster.paragraph
  )
end


500.times do
  Subscription.create(
    article_id: Article.all.sample.id,
    climber_id: Climber.all.sample.id
  )
end

puts 'DB Seeded'





# Faker::Dessert.flavor + ' ' + Faker::ElectricalComponents.active + ' ' + Faker::Creature::Animal.name + ' ' + Faker::Books::CultureSeries.culture_ship
