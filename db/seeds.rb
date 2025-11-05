# db/seeds.rb

User.create!(name: 'Alice', email: 'alice@example.com', password: 'password123')
User.create!(name: 'Bob', email: 'bob@example.com', password: 'password123')
User.create!(name: 'Charlie', email: 'charlie@example.com', password: 'password123')

Account.create!(user_id: 1, balance: 1000.00)
Account.create!(user_id: 2, balance: 1500.00)
Account.create!(user_id: 3, balance: 2000.00)