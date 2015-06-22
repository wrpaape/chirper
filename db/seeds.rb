initial_userbase = 10
initial_chirp_count = 5
initial_comments_count = 20

initial_userbase.times do
  User.create(name: Faker::Name.name,
              password_digest: BCrypt::Password.create(Faker::Internet.password))
end

User.create(name: "admin",
            password_digest: BCrypt::Password.create("admin")

all_users = User.all
initial_chirp_count.times do
  user = all_users.sample
  Chirp.create(title: LiterateRandomizer.word,
               body: LiterateRandomizer.sentence,
               topic: "##{LiterateRandomizer.word}",
               user_id: user.id)
end

all_chirps = Chirp.all
initial_comments_count.times do
  user = all_users.sample
  chirp = all_chirps.sample
  Comment.create(title: LiterateRandomizer.word,
                 body: LiterateRandomizer.sentence,
                 rating: rand(0..5),
                 user_id: user.id,
                 chirp_id: chirp.id)
end

