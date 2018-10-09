# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'

Course.destroy_all

courJson = JSON.parse(File.read("/home/eli/Course_Catalog/db/course.json"))
instJson = JSON.parse(File.read("/home/eli/Course_Catalog/db/instructor.json"))
subjJson = JSON.parse(File.read("/home/eli/Course_Catalog/db/subject.json"))

i = 0
while courJson[i] != nil
    course = Course.new do |c|
        c.name = courJson[i]["name"]
        c.description = courJson[i]["description"]
        c.code = courJson[i]["code"]
        c.credits = courJson[i]["credits"]
        c.independent_study = courJson[i]["independent_study"]
    end
    course.save
    i += 1
end

i = 0

while instJson[i] != nil
    instructor = Instructor.new do |n|
        n.email = instJson[i]["email"]
        n.first = instJson[i]["first"]
        n.middle = instJson[i]["middle"]
        n.last = instJson[i]["last"]
    end
    instructor.save
    i += 1
end

i = 0

while subjJson[i] != nil
    subject = Subject.new do |s|
        s.name = subjJson[i]["name"]
        s.abbreviation = subjJson[i]["abbreviation"]
    end
    subject.save
    i += 1
end
