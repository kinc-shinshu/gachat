10.times { |i| Chat.create!(body: "Hello #{i}-world!", name: "user#{i}") }
