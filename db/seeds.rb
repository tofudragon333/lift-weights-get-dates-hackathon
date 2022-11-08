# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "destorying previous seeds..."
# clears the datatable
User.destroy_all
Program.destroy_all
Exercise.destroy_all
ProgressPhoto.destroy_all
WeightHistory.destroy_all

puts "done destroy previous seeds..."
puts "seeding users..."

user1 = User.create([{
    :username => "rubysunset",
    :password => "123",
    :first_name => "Ruby",
    :last_name => "Sunset",
    :current_weight => 140,
    :goal_weight => 132
}])

user2 = User.create([{
    :username => "kyloren",
    :password => "123",
    :first_name => "Kylo",
    :last_name => "Ren",
    :current_weight => 180,
    :goal_weight => 175
}])

puts "done seeding users!!"

puts "seeding programs..."

pushA = Program.create([
    {
        :user_id => 1,
        :name => "Push A",
        :notes => "Perform once a week"
    }
])

pullA = Program.create([
    {
        :user_id => 1,
        :name => "Pull A",
        :notes => "Perform once a week"
    }
])

legsA = Program.create([
    {
        :user_id => 1,
        :name => "Legs A",
        :notes => "Perform once a week. Don't you DARE skip leg day. (Your calves are pathetic.)"
    }
])

puts "done seeding programs!!"

puts "seeding exercies..."

benchPress = Exercise.create([
    {
      :program_id => 1,
      :exercise_name => "Bench Press",
      :prescribed_sets => 3,
      :prescribed_reps => 10,
      :prescribed_weight => 135,
      :performed_sets => nil, 
      :peformed_reps => nil,
      :performed_weight => nil,
      :rest_duration => 120,
      :notes => "Try for 8-10 reps"
    }
])

arnoldPress = Exercise.create([
    {
        :program_id => 1,
        :exercise_name => "Arnold Press",
        :prescribed_sets => 3,
        :prescribed_reps => 8,
        :prescribed_weight => 20,
        :performed_sets => nil, 
        :peformed_reps => nil,
        :performed_weight => nil,
        :rest_duration => 90,
        :notes => "Try for 8-10 reps"
    }
])

conventionalDeadlift = Exercise.create([
    {
      :program_id => 3,
      :exercise_name => "Conventional Deadlift",
      :prescribed_sets => 3,
      :prescribed_reps => 10,
      :prescribed_weight => 165,
      :performed_sets => nil, 
      :peformed_reps => nil,
      :performed_weight => nil,
      :rest_duration => 120,
      :notes => "Try for 8-10 reps"
    }
])

pendleyRow = Exercise.create([
    {
      :program_id => 2,
      :exercise_name => "Pendley Row",
      :prescribed_sets => 3,
      :prescribed_reps => 6,
      :prescribed_weight => 135,
      :performed_sets => nil, 
      :peformed_reps => nil,
      :performed_weight => nil,
      :rest_duration => 90,
      :notes => "Try for 6-8 reps"
    }
])

latPulldowns = Exercise.create([
    {
        :program_id => 2,
        :exercise_name => "Lat Pulldown",
        :prescribed_sets => 3,
        :prescribed_reps => 10,
        :prescribed_weight => 85,
        :performed_sets => nil, 
        :peformed_reps => nil,
        :performed_weight => nil,
        :rest_duration => 90,
        :notes => "Try for 10-12 reps"
    }
])

backSquat = Exercise.create([
    {
        :program_id => 3,
        :exercise_name => "Back Squat",
        :prescribed_sets => 3,
        :prescribed_reps => 5,
        :prescribed_weight => 225,
        :performed_sets => nil, 
        :peformed_reps => nil,
        :performed_weight => nil,
        :rest_duration => 120,
        :notes => "Make sure to do a warmup set with the bar before starting your working sets."
    }
])

puts "exercises seeded!"
puts "done! (minus weight history and progress photo initial data)"
