FactoryBot.define do
  factory :show do
    tvmaze { Faker::Name.unique.name }
    avatar { Faker::Placeholdit.image }
    title { Faker::Lorem.word }
    description { Faker::Lorem.paragraph }
    genre { %w[Crime Drama Thriller] }
    watchlists_count { 0 }
    recommendations_count { 0 }
    editor_pick { false }
    slug { Faker::Lorem.word }
  end
end
