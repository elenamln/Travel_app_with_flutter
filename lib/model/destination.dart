class Destination {
  final String? imageUrl;
  final String? city;
  final String? country;
  final String? description;

  Destination({
    this.imageUrl,
    this.city,
    this.country,
    this.description,
  });
}

List<Destination> destinationList = [
  Destination(
    imageUrl:
        'https://img.freepik.com/premium-photo/view-paris-france_110893-1670.jpg',
    city: 'Paris',
    country: 'France',
    description:
        'The City of Light beckons with its iconic Eiffel Tower and world-class art museums.\n'
        'Stroll through charming neighborhoods filled with cafes and boutiques.\n'
        'Experience masterpieces at the Louvre and Musée d\'Orsay.\n'
        'Indulge in exquisite French cuisine and fresh-baked pastries.\n'
        'Visit the Palace of Versailles and Notre-Dame Cathedral.',
  ),
  Destination(
    imageUrl:
        'https://img.freepik.com/free-photo/view-new-york-city-manhattan-midtown-dusk-with-skyscrapers-illuminated-east-river_268835-754.jpg',
    city: 'New York',
    country: 'USA',
    description: 'Experience the energy of Times Square and Broadway shows.\n'
        'Explore Central Park\'s 843 acres of urban nature and attractions.\n'
        'Visit world-famous museums like MoMA and the Metropolitan.\n'
        'Take in stunning views from the Empire State Building.\n'
        'Discover diverse neighborhoods from Brooklyn to Manhattan.',
  ),
  Destination(
    imageUrl:
        'https://img.freepik.com/free-photo/toronto-canada-july-2-rogers-center-closeup-july-2-2012-toronto-it-was-opened-1989-as-home-toronto-blue-jays-is-first-have-retractable-motorized-roof_649448-342.jpg',
    city: 'Sydney',
    country: 'Australia',
    description: 'Marvel at the iconic Sydney Opera House and Harbour Bridge.\n'
        'Relax on world-famous Bondi Beach and coastal walks.\n'
        'Experience unique wildlife at Taronga Zoo.\n'
        'Explore the historic Rocks district and vibrant markets.\n'
        'Take a scenic harbour cruise or ferry ride.',
  ),
  Destination(
    imageUrl:
        'https://img.freepik.com/premium-photo/dubai-uae-december-26-2017-camels-skyscrapers-background-beach-uae-dubai-marina-jbr-beach-style-camels-skyscrapers_474717-10765.jpg',
    city: 'Dubai',
    country: 'UAE',
    description: 'Ascend the world\'s tallest building, the Burj Khalifa.\n'
        'Shop at the Dubai Mall and traditional gold souks.\n'
        'Experience desert safaris and luxury beach resorts.\n'
        'Visit the Palm Jumeirah and Burj Al Arab.\n'
        'Explore traditional culture at Al Fahidi Historical District.',
  ),
  Destination(
    imageUrl:
        'https://img.freepik.com/free-photo/big-ben-westminster-bridge-sunset-london-uk_268835-1395.jpg',
    city: 'London',
    country: 'UK',
    description:
        'Discover royal history at Buckingham Palace and Tower of London.\n'
        'Explore world-class museums and galleries, most with free entry.\n'
        'Experience the West End\'s famous theatre district.\n'
        'Shop at Harrods, Oxford Street, and Camden Market.\n'
        'Take a Thames river cruise for iconic city views.',
  ),
];