# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Game.destroy_all 
Player.destroy_all 
Frame.destroy_all 

game = Game.create({})

player = Player.create( game: game, name: "Dummy Name")
for i in 1..9 do 
    Frame.create( 
        player: player, 
        frame_number: i, 
        first_score: 10, 
        second_score: 10
    )
end 
Frame.create(
    player: player, 
    frame_number: 10, 
    first_score: 10, 
    second_score: 10, 
    bonus_score: 10
)



