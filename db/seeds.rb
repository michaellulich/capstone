# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Artist.create(name:"Dehd", email:"dehd@email.com", genre:"rock",password:"password")
Artist.create(name:"Deeper", email:"deeper@email.com", genre:"rock", password:"password")
Artist.create(name:"Circuit des Yeux", email:"CDY@email.com", genre: "ambient", password:"password")
Artist.create(name:"CAVE", email:"cave@email.com", genre:"experimental", password:"password")
Artist.create(name:"Fire Toolz", email:"firetoolz@email.com", genre:"experimental", password:"password")
Artist.create(name:"Ne-hi", email:"ne-hi@email.com", genre:"rock", password:"password")
Artist.create(name:"Twin Peaks", email:"twinpeaks@email.com", genre:"rock", password:"password")
Artist.create(name:"Bitchin Bajas", email:"bitchinbajas@email.com", genre:"jazz", password:"password")
Artist.create(name:"George Clanton", email:"georgeclanton@email.com", genre:"vaporwave", password:"password")
Artist.create(name:"Rp Boo", email:"rpboo@email.com", genre:"FootWork", password:"password")

Image.create(src:"http://www.thecompmagazine.com/wp-content/uploads/2016/08/Dehd-1.jpg", artist_id:1)
Image.create(src:"http://www.thecompmagazine.com/wp-content/uploads/2016/08/Dehd-4.jpg", artist_id:1)
Image.create(src:"https://static1.squarespace.com/static/523367bde4b09f8abcd0d24c/t/5a7dd2bcec212d3d8131a432/1518195416305/dehd_photobooth.png", artist_id:1)

Image.create(src:"http://www.trbimg.com/img-57448ae1/turbine/redeye-deeper-trans-single-premiere-chicago-in-001/650/650x366", artist_id:2)
Image.create(src:"https://s3.amazonaws.com/static.imposemagazine.com/wp-content/uploads/2016/06/deeper-new.jpg", artist_id:2)
Image.create(src:"https://www.culturecreature.com/wp-content/uploads/2018/04/deeper-band-675x418.jpg", artist_id:2)

Image.create(src:"https://bandcampblog.files.wordpress.com/2017/10/circuit-des-yeux-by-julia-dratel-600.jpg?w=800", artist_id:3)
Image.create(src:"http://dublinconcerts.ie/content/uploads/2014/04/circuit-des-yeux.jpg", artist_id:3)
Image.create(src:"https://littlevillagemag.com/wp-content/uploads/2015/08/circuit-finalb.jpg", artist_id:3)


Image.create(src:"http://www.metalsucks.net/wp-content/uploads/2008/02/cavein1.jpg", artist_id:4)
Image.create(src:"https://ohmyrocknessdotcom.s3.amazonaws.com/uploads/band/image/18756/open-uri20131208-8620-1ip4pvf", artist_id:4)
Image.create(src:"http://www.dragcity.com/uploads/artists/252/photos/252/large_CAVE_dc472.jpg", artist_id:4)

Image.create(src:'https://media1.fdncms.com/chicago/imager/u/original/25379414/marcloid.jpeg', artist_id:5)
Image.create(src:'https://c1.staticflickr.com/2/1682/26590408272_d7a4874765_b.jpg', artist_id:5)
Image.create(src:'https://video-images.vice.com/articles/5b7db61ae41a8c0008ba1b04/lede/1534965435514-Fire-Toolz-Scream-by-Matt-Mateiescu-1.jpeg?crop=1xw%3A0.8422xh%3B0xw%2C0.1578xh&resize=650%3A*&output-quality=55', artist_id:5)

Image.create(src:'https://nyoobserver.files.wordpress.com/2017/03/nehi_creditbryanallenlamb1.jpg?quality=80&w=635', artist_id:6)
Image.create(src:'https://farm8.static.flickr.com/7633/27888974941_a1d4d6a759_b.jpg', artist_id:6)
Image.create(src:'https://i2.wp.com/thirdcoastreview.com/wp-content/uploads/2017/11/NEHI-DSC_0591-700x467_c.jpg', artist_id:6)

Image.create(src:"http://chicago.thedelimagazine.com/sites/upload-files/temp/919022_567156223314828_1194187171_o_0.jpg", artist_id:7)
Image.create(src:"http://www.qromag.com/wp-content/uploads/2016/10/twinpeaksinterview.jpg", artist_id:7)
Image.create(src:"https://farm8.staticflickr.com/7195/14066612811_9f75092572.jpg", artist_id:7)

Image.create(src:"http://www.dragcity.com/uploads/artists/397/photos/399/large_BBBB.jpg", artist_id:8)
Image.create(src:"https://adhoc_bucket.s3.amazonaws.com/cache/images/BItchin_Bajas_by_Allison_Taich_medium_image.jpg", artist_id:8)
Image.create(src:"http://www.cafeoto.co.uk/media/thumbnails/uploads/bitchinbajas-byjeremiahchiu-01_page_image.jpg", artist_id:8)

Image.create(src:"https://images.sk-static.com/images/media/profile_images/artists/8629774/huge_avatar",artist_id:9)
Image.create(src:"https://pbs.twimg.com/profile_images/973993203660550144/wSJGtYrY_400x400.jpg",artist_id:9)
Image.create(src:"https://photos.bandsintown.com/thumb/7384569.jpeg",artist_id:9)

Image.create(src:"http://cdn4.planet.mu/wp-content/uploads/2016/03/RP-Boo-2-2015-by-Wills-Glasspiegel-650x433.jpg", artist_id:10)
Image.create(src:"http://cdn4.planet.mu/wp-content/uploads/2016/03/RP-Boo-2015-by-Wills-Glasspiegel-650x383.jpg", artist_id:10)
Image.create(src:"https://media.pitchfork.com/photos/592993c0c0084474cd0beb65/1:1/w_300/6961c4a7.jpg", artist_id:10)


User.create(name:"Mike", email:"mike@email.com", password:"password")
User.create(name:"Bob", email:"bob@email.com", password:"password")
User.create(name:"Doug", email:"doug@email.com", password:"password")
User.create(name:"Anthony", email:"anthony@email.com", password:"password")

Event.create(address:"2338 N Milwaukee Ave, Chicago, IL 60647", name:"Cole's Bar",time: 3.days.from_now, description:"live music", artist_id: 1)
Event.create(address:"3425 W Fullerton Ave, Chicago, IL 60647", name:"Burlington Bar",time: 3.days.from_now, description:"Live music in the backroom", artist_id: 3)
Event.create(address:"1354 W Wabansia Ave, Chicago, IL 60642", name:"The Hideout",time: 3.days.from_now, description:"Record Release", artist_id: 4)
Event.create(address:"3734 W Belmont Ave, Chicago, IL 60618", name:"Sleeping Village",time: 3.days.from_now, description:"Cool music!", artist_id: 5)
Event.create(address:"3111 N Western Ave, Chicago, IL 60618", name:"Constellation",time: 3.days.from_now, description:"Improvisation", artist_id: 6)
Event.create(address:"3219-21 S Morgan St, Chicago, IL 60607", name:"Co-Prosperity Sphere",time: 3.days.from_now, description:"Bridgeport Arts", artist_id: 7)
Event.create(address:"4802 N Broadway St, Chicago, IL 60640", name:"The Green Mill",time: 3.days.from_now, description:"Improvisational Jazz", artist_id: 8)
Event.create(address:"2042 W 21st St; Chicago, Illinois 60608", name:"Eco",time: 3.days.from_now, description:"Rooftop show", artist_id: 2)
Event.create(address:"1501 W Randolph St, Chicago, IL 60606", name:"Union Park", time: 3.days.from_now, description:"Pitchfork Music Festival", artist_id: 9)
Event.create(address:"300 N Central Park Ave, Chicago, IL 60624", name:"Garfield Park Conservatory", time: 3.days.from_now, description: "FootWork Live", artist_id: 10)



ArtistEvent.create(artist_id:1, event_id:1)
ArtistEvent.create(artist_id:2, event_id: 1)
ArtistEvent.create(artist_id:3, event_id: 2)
ArtistEvent.create(artist_id:4, event_id: 3)
ArtistEvent.create(artist_id:5, event_id:4)
ArtistEvent.create(artist_id:6, event_id:5)
ArtistEvent.create(artist_id:7, event_id:6)
ArtistEvent.create(artist_id:8, event_id:7)
ArtistEvent.create(artist_id:2, event_id:8)
ArtistEvent.create(artist_id:9, event_id:9)
ArtistEvent.create(artist_id:10, event_id:10)


UserArtist.create(user_id:1, artist_id:1)
UserArtist.create(user_id:1, artist_id:2)
UserArtist.create(user_id:1, artist_id:3)
UserArtist.create(user_id:2, artist_id:1)
UserArtist.create(user_id:2, artist_id:2)
UserArtist.create(user_id:2, artist_id:3)
UserArtist.create(user_id:3, artist_id:1)
UserArtist.create(user_id:3, artist_id:2)
UserArtist.create(user_id:3, artist_id:3)
UserArtist.create(user_id:4, artist_id:4)

UserEvent.create(user_id: 1, event_id:1)
UserEvent.create(user_id: 1, event_id:2)
UserEvent.create(user_id: 1, event_id:3)
UserEvent.create(user_id: 2, event_id:1)
UserEvent.create(user_id: 3, event_id:2)
UserEvent.create(user_id: 4, event_id:3)