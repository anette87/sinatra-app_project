tikiroom = Ride.create(name: "Walt Disney's Enchanted Tiki Room", location: "Adventureland", description: "Theater in the round featuring Audio-Animatronic Characters")
junglecruise = Ride.create(name: "Jungle Cruise", location: "Adventureland", description: "River boat attraction")
indianajones = Ride.create(name: "Indiana Jones Adventure: Temple of the Forbidden Eye", location: "Adventureland", description: "Enhanced motion vehicle dark ride attraction")
tarzan = Ride.create(name: "Tarzan's Treehouse", location: "Adventureland", description: "Walk-through attraction")
railroad = Ride.create(name: "Disneyland Railroad", location: "Main Street, USA", description: "Railroad")
mrlincoln = Ride.create(name: "Great Moments with Mr.Lincoln", location: "Main Street, USA", description: "Stage show feauturing U.S. President Abraham Lincoln Audio-Animatronic")
gallery = Ride.create(name: "The Disney Gallery", location: "Main Street, USA", description: "Art work from Walt Disney Imagineering")
cinema = Ride.create(name: "Main Street Cinema", location: "Main Street, USA", description: "Movie Theater")
pirates = Ride.create(name: "Pirates of the Caribbean", location: "New Orleans Square", description: "Dark boat ride")
hauntedmansion = Ride.create(name: "The Haunted Mansion", location: "New Orleans Square", description: "Dark audio animatronics ghost ride")
canoes = Ride.create(name: "Davy Crockett Explorer Canoes", location: "Critter Country", description: "Free Floating Canoe Experience")
pooh = Ride.create(name: "The many Adventures of Winnie the Pooh", location: "Critter Country", description: "Full audio animatronics and trackless ride system")
thunder = Ride.create(name: "Big Thunder Mountain Railroad", location: "Frontierland", description: "Steel - Mine Train roller coaster")
riverboat= Ride.create(name: "Mark Twain Riverboat", location: "Frontierland", description: "Steamboat ride")
island = Ride.create(name: "Pirate's Lair on Tom Sawyer Island", location: "Frontierland", description: "Artificial Island")
columbia = Ride.create(name: "Sailing Ship Columbia", location: "Frontierland", description: "Sailing Ship Tour")
goofy = Ride.create(name: "Goofy's Playhouse", location: "Mickey's Toontown", description: "Tour to Goofy's house")
donald = Ride.create(name: "Donald's Boat", location: "Mickey's Toontown", description: "Tour to Donald's boat")
gadget = Ride.create(name: "Gadget's Go Coaster", location: "Mickey's Toontown", description: "A junior roller coaster")
chipndale = Ride.create(name: "Chip 'n Dale's Treehouse", location: "Mickey's Toontown", description: "Tour to the Treehouse")
mickey = Ride.create(name: "Mickey's House and Meet Mickey", location: "Mickey's Toontown", description: "Tour to Mickey Mouse and meet Mickey")
minnie = Ride.create(name: "Minnie's House", location: "Mickey's Toontown", description: "Tour to Minnie's house")
rogerrabbit = Ride.create(name: "Roger Rabbit's Car Toon Spin", location: "Mickey's Toontown", description: "Enter to Toowtown Cab Company. Dark ride")
falcon = Ride.create(name: "Millennium Falcon: Smuggler's Run", location: "Star Wars: Galaxy's Edge", description: "Motion Simulation Attraction")
rise = Ride.create(name: "Star Wars: Rise of the Resistance", location: "Star Wars: Galaxy's Edge", description: "A combined trackless dark ride, walk-through, motion simulator, and drop ride system")












User.create(username: "Steveo14", email:"steveo@gmail.com", password_digest: "Disneyland")
User.create(username: "EdithLavie", email:"edithlavie@gmail.com", password_digest: "Texas")
User.create(username: "EthanS", email:"ethans@gmail.com", password_digest: "Legos")

Review.create(title: "Best Ride Ever", content:"This is the best ride in the park.", user_id: 1, ride_id:1)
Review.create(title: "Not my favorite", content:"The line is too long and the ride too short.", user_id: 2, ride_id:6)
Review.create(title: "Great for little kids", content:"My little ones had a blast in this ride. The music is amazing.", user_id: 3, ride_id:12)

