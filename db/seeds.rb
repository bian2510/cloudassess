# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
organisations = [
    { title: 'ABC Company', location: 'Sydney' },
    { title: 'XYZ Company', location: 'Brisbane' },
    { title: 'Company ABC XYZ', location: 'Melbourne' }
]

people = [
    { first_name: 'Paul', last_name: 'Smith', organisation_id: 1, record_count: 5 },
    { first_name: 'Andrew', last_name: 'Baker', organisation_id: 2, record_count: 0 },
    { first_name: 'Michael', last_name: 'Clarke', organisation_id: 3, record_count: 14 },
    { first_name: 'David', last_name: 'Cline', organisation_id: 1, record_count: 3 },
    { first_name: 'Adam', last_name: 'Broadbent', organisation_id: 2, record_count: 0 }
]

organisations.each do |organization|
    Organisation.create(title: organization[:title], location: organization[:location])
end

people.each do |person|
    Person.create(
        first_name: person[:first_name], last_name: person[:last_name], 
        organisation_id: person[:organisation_id], record_count: person[:record_count]
    )
end