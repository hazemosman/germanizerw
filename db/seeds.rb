# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Tense.create(name: 'Präsens', description: 'Present')
Tense.create(name: 'Imperfekt, Präteritum', description: 'preterite')
Tense.create(name: 'Perfekt', description: 'Perfect')
Tense.create(name: 'Plusquamperfekt', description: 'Past Perfect')
Tense.create(name: 'Futur I', description: 'Future')
Tense.create(name: 'Futur II', description: 'Future Perfect')

Pronoun.create(description: 'I',nominative: 'ich', accusative: 'mich', dative: 'mir')
Pronoun.create(description: 'you (informal)',nominative: 'du', accusative: 'dich', dative: 'dir')
Pronoun.create(description: 'he',nominative: 'er', accusative: 'ihn', dative: 'ihm')
Pronoun.create(description: 'she',nominative: 'sie', accusative: 'sie', dative: 'ihr')
Pronoun.create(description: 'it',nominative: 'es', accusative: 'es', dative: 'ihm')
Pronoun.create(description: 'we',nominative: 'wir', accusative: 'uns', dative: 'uns')
Pronoun.create(description: 'you (all)',nominative: 'ihr', accusative: 'euch', dative: 'euch')
Pronoun.create(description: 'they',nominative: 'sie', accusative: 'sie', dative: 'ihnen')
Pronoun.create(description: 'you (formal)',nominative: 'Sie', accusative: 'Sie', dative: 'Ihnen')