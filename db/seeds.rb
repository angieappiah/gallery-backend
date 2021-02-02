artist = Artist.create(username: 'Angie', email: 'angie@angie.com', location: 'california')

gallery = Gallery.create(style: 'mural', artist_id:'1')

piece = Piece.create(name: 'The Fame Of Mine', description: 'painted overnight', gallery_id: 1)



#create one user current_user