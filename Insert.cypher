// Criar personagens
CREATE (luke:Character {name: 'Luke Skywalker', homeworld: 'Tatooine'}),
       (vader:Character {name: 'Darth Vader', homeworld: 'Tatooine'}),
       (leia:Character {name: 'Leia Organa', homeworld: 'Alderaan'}),
       (obiwan:Character {name: 'Obi-Wan Kenobi', homeworld: 'Stewjon'}),
       (yoda:Character {name: 'Yoda', homeworld: 'Unknown'}),
       (palpatine:Character {name: 'Palpatine', homeworld: 'Naboo'}),
       (qui_gon:Character {name: 'Qui-Gon Jinn', homeworld: 'Coruscant'}),
       (han:Character {name: 'Han Solo', homeworld: 'Corellia'}),
       (padme:Character {name: 'Padmé Amidala', homeworld: 'Naboo'}),
       (anakin:Character {name: 'Anakin Skywalker', homeworld: 'Tatooine'});

// Afiliação
CREATE (rebel:Affiliation {name: 'Rebel Alliance'}),
       (empire:Affiliation {name: 'Galactic Empire'}),
       (jedi:Affiliation {name: 'Jedi Order'}),
       (republic:Affiliation {name: 'Galactic Republic'});

// Residências
CREATE (tatooine:Place {name: 'Tatooine'}),
       (dagobah:Place {name: 'Dagobah'}),
       (alderaan:Place {name: 'Alderaan'}),
       (mustafar:Place {name: 'Mustafar'}),
       (coruscant:Place {name: 'Coruscant'}),
       (deathstar:Place {name: 'Death Star'}),
       (naboo:Place {name: 'Naboo'});

// Itens importantes
CREATE (lightsaber:Item {name: 'Lightsaber'}),
       (xwing:Item {name: 'X-Wing'}),
       (armor:Item {name: 'Armor'}),
       (blaster:Item {name: 'Blaster'}),
       (jedirobes:Item {name: 'Jedi Robes'}),
       (jedicane:Item {name: 'Jedi Cane'});

// Relacionamentos de afiliação
MATCH (luke:Character {name: 'Luke Skywalker'}),
      (vader:Character {name: 'Darth Vader'}),
      (leia:Character {name: 'Leia Organa'}),
      (obiwan:Character {name: 'Obi-Wan Kenobi'}),
      (yoda:Character {name: 'Yoda'}),
      (han:Character {name: 'Han Solo'}),
      (padme:Character {name: 'Padmé Amidala'}),
      (palpatine:Character {name: 'Palpatine'}),
      (rebel:Affiliation {name: 'Rebel Alliance'}),
      (empire:Affiliation {name: 'Galactic Empire'}),
      (jedi:Affiliation {name: 'Jedi Order'}),
      (republic:Affiliation {name: 'Galactic Republic'})
CREATE (luke)-[:AFFILIATED_WITH]->(rebel),
       (vader)-[:AFFILIATED_WITH]->(empire),
       (leia)-[:AFFILIATED_WITH]->(rebel),
       (obiwan)-[:AFFILIATED_WITH]->(jedi),
       (yoda)-[:AFFILIATED_WITH]->(jedi),
       (han)-[:AFFILIATED_WITH]->(rebel),
       (palpatine)-[:AFFILIATED_WITH]->(empire),
       (padme)-[:AFFILIATED_WITH]->(republic);

// Relacionamentos de treinamento
MATCH (luke:Character {name: 'Luke Skywalker'}),
      (vader:Character {name: 'Darth Vader'}),
      (obiwan:Character {name: 'Obi-Wan Kenobi'}),
      (yoda:Character {name: 'Yoda'}),
      (palpatine:Character {name: 'Palpatine'}),
      (qui_gon:Character {name: 'Qui-Gon Jinn'}),
      (anakin:Character {name: 'Anakin Skywalker'})
CREATE (luke)-[:TRAINED_BY]->(obiwan),
       (luke)-[:TRAINED_BY]->(yoda),
       (qui_gon)-[:TRAINED_BY]->(yoda),
       (vader)-[:TRAINED_BY]->(palpatine),
       (obiwan)-[:TRAINED_BY]->(qui_gon),
       (anakin)-[:TRAINED_BY]->(obiwan),
       (anakin)-[:TRAINED_BY]->(qui_gon);

// Adicionando o MASTER_OF invertido
MATCH (c1:Character)-[r:TRAINED_BY]->(c2:Character)
CREATE (c2)-[:MASTER_OF]->(c1);

// Relacionamentos de parentesco
MATCH (luke:Character {name: 'Luke Skywalker'}),
      (vader:Character {name: 'Darth Vader'}),
      (leia:Character {name: 'Leia Organa'}),
      (anakin:Character {name: 'Anakin Skywalker'}),
      (padme:Character {name: 'Padmé Amidala'})
CREATE (luke)-[:RELATIVE_OF]->(vader),
       (leia)-[:RELATIVE_OF]->(vader),
       (luke)-[:SIBLING_OF]->(leia),
       (padme)-[:RELATIVE_OF]->(anakin);

// Relacionamentos de residência
MATCH (luke:Character {name: 'Luke Skywalker'}),
      (vader:Character {name: 'Darth Vader'}),
      (leia:Character {name: 'Leia Organa'}),
      (padme:Character {name: 'Padmé Amidala'}),
      (obiwan:Character {name: 'Obi-Wan Kenobi'}),
      (yoda:Character {name: 'Yoda'}),
      (han:Character {name: 'Han Solo'}),
      (anakin:Character {name: 'Anakin Skywalker'}),
      (tatooine:Place {name: 'Tatooine'}),
      (dagobah:Place {name: 'Dagobah'}),
      (alderaan:Place {name: 'Alderaan'}),
      (mustafar:Place {name: 'Mustafar'}),
      (coruscant:Place {name: 'Coruscant'}),
      (deathstar:Place {name: 'Death Star'}),
      (naboo:Place {name: 'Naboo'})
CREATE (luke)-[:LIVED_IN]->(tatooine),
       (luke)-[:LIVED_IN]->(dagobah),
       (vader)-[:LIVED_IN]->(tatooine),
       (vader)-[:LIVED_IN]->(mustafar),
       (vader)-[:LIVED_IN]->(deathstar),
       (leia)-[:LIVED_IN]->(alderaan),
       (obiwan)-[:LIVED_IN]->(coruscant),
       (obiwan)-[:LIVED_IN]->(tatooine),
       (yoda)-[:LIVED_IN]->(coruscant),
       (yoda)-[:LIVED_IN]->(dagobah),
       (padme)-[:LIVED_IN]->(naboo),
       (han)-[:LIVED_IN]->(alderaan),
       (anakin)-[:LIVED_IN]->(tatooine);

// Relacionamentos de itens importantes
MATCH (luke:Character {name: 'Luke Skywalker'}),
      (vader:Character {name: 'Darth Vader'}),
      (leia:Character {name: 'Leia Organa'}),
      (obiwan:Character {name: 'Obi-Wan Kenobi'}),
      (yoda:Character {name: 'Yoda'}),
      (han:Character {name: 'Han Solo'}),
      (padme:Character {name: 'Padmé Amidala'}),
      (anakin:Character {name: 'Anakin Skywalker'}),
      (lightsaber:Item {name: 'Lightsaber'}),
      (xwing:Item {name: 'X-Wing'}),
      (armor:Item {name: 'Armor'}),
      (blaster:Item {name: 'Blaster'}),
      (jedirobes:Item {name: 'Jedi Robes'}),
      (jedicane:Item {name: 'Jedi Cane'})
CREATE (luke)-[:OWNS]->(lightsaber),
       (luke)-[:OWNS]->(xwing),
       (vader)-[:OWNS]->(lightsaber),
       (vader)-[:OWNS]->(armor),
       (leia)-[:OWNS]->(blaster),
       (obiwan)-[:OWNS]->(lightsaber),
       (obiwan)-[:OWNS]->(jedirobes),
       (yoda)-[:OWNS]->(lightsaber),
       (yoda)-[:OWNS]->(jedicane),
       (han)-[:OWNS]->(blaster),
       (padme)-[:OWNS]->(lightsaber),
       (anakin)-[:OWNS]->(lightsaber);
