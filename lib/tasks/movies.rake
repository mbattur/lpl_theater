namespace :movies do
  desc "Seeds movies"
  task seed: :environment do
    puts "Seeding movies..."
    5.times do
      Movie.create!(name: Faker::Movie.title)
    end
    puts "#{Movie.count} movies created"
    puts "Done."
  end
end
