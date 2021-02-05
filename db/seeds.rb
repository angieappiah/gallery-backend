#artist = Artist.create(username: 'Angie', email: 'angie@angie.com', location: 'california')

gallery_one = Gallery.create(style: 'mural')

piece_a = Piece.create(gallery_id: 1, name: 'The Fame Of Mine', description: 'painted overnight')
piece_b = Piece.create(gallery_id: 1, name: 'stand tall, stand proud', description: 'Inspired by crowd movement and the crowd spirit.')
piece_a = Piece.create(gallery_id: 1, name: 'Hold your head up high', description: 'Aimed at inferiority complex')



#create one user current_user