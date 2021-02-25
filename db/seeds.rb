#artist = Artist.create(username: 'Angie', email: 'angie@angie.com', location: 'california')

gallery_one = Gallery.create(style: 'mural')

piece_a = Piece.create(gallery_id: 1, name: 'The Fame Of Mine', likes: 6, description: 'painted overnight')
piece_b = Piece.create(gallery_id: 1, name: 'stand tall, stand proud', likes: 3, description: 'Inspired by crowd movement and the crowd spirit.')
piece_a = Piece.create(gallery_id: 1, name: 'Hold your head up high', likes: 10, description: 'Aimed at inferiority complex')

gallery_two = Gallery.create(style: 'sculpture')
piece_a = Piece.create(gallery_id: 2, name: 'Akuaba doll', likes: 4, description: 'The beauty of a woman')





#create one user current_user