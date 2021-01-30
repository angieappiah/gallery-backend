
gallery = Gallery.create(style: 'mural')

piece = Piece.create(name: 'The Fame Of Mine', description: 'painted overnight', gallery_id: 1, url: 'https://i.guim.co.uk/img/media/9b0f9fb9114ea08053601b0ae1c9b91eaa3f068e/0_155_5000_3001/master/5000.jpg?width=1020&quality=45&auto=format&fit=max&dpr=2&s=6db71e2a8d7d48fd2d4d42e509b4a7d1')

artist = Artist.create(username: 'Angie', email: 'angie@angie.com', location: 'california')

#create one user current_user