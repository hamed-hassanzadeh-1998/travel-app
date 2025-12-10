class TravelModel {
   String id;
   String name;
   String location;
   String image;
   String distance;
   String temp;
   String rating;
   String description;
   String price;
   

   TravelModel({
      required this.id,
      required this.name,
       required this.location,
      required this.image,
      required this.distance,
      required this.temp,
      required this.rating,
      required this.description,
      required this.price
           });
}
List<TravelModel> travelList = [
  TravelModel(
    id: '1', 
    name: 'New York', 
    location: 'USA', 
    image: 'https://images.unsplash.com/photo-1496442226666-8d4d0e62e6e9?w=800&h=600&fit=crop', 
    distance: '100km', 
    temp: '20°C', 
    rating: '4.5', 
    description: 'The city that never sleeps! Experience the magic of New York with its iconic skyscrapers, vibrant Times Square, beautiful Central Park, and world-famous museums. An unforgettable adventure awaits you.', 
    price: '100'
  ),
  TravelModel(
    id: '2', 
    name: 'Tehran', 
    location: 'Iran', 
    image: 'https://images.unsplash.com/photo-1605559424843-9e4c228bf1c2?w=800&h=600&fit=crop', 
    distance: '200km', 
    temp: '25°C', 
    rating: '4.0', 
    description: 'The bustling capital of Iran with the Alborz Mountains in the background, colorful traditional bazaars, historic museums, and delicious local cuisine. Tehran is a perfect blend of tradition and modernity.', 
    price: '200'
  ),
  TravelModel(
    id: '3', 
    name: 'Paris', 
    location: 'France', 
    image: 'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?w=800&h=600&fit=crop', 
    distance: '300km', 
    temp: '30°C', 
    rating: '4.2', 
    description: 'The City of Light and Love! Paris enchants with its iconic Eiffel Tower, the magnificent Louvre Museum, Notre-Dame Cathedral, and charming cafes. Stroll through cobblestone streets and immerse yourself in rich art and culture.', 
    price: '300'
  ),
  TravelModel(
    id: '4', 
    name: 'Italy - Rome', 
    location: 'Italy', 
    image: 'https://images.unsplash.com/photo-1529260830199-42c24126f198?w=800&h=600&fit=crop', 
    distance: '400km', 
    temp: '35°C', 
    rating: '4.7', 
    description: 'The Eternal City with 2,700 years of history! Rome captivates with the magnificent Colosseum, the sacred Vatican, the Trevi Fountain, and mouthwatering Italian cuisine. Every corner of this city tells a story.', 
    price: '400'
  ),
];