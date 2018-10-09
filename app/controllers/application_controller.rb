class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    def hello
        render html: "Hello, world!"
    end

    def links
        render html: "<h1>Welcome to my course catalog!</h1>"
        render html: subjects.tag.strong('Subjects')
        render html: courses.tag.strong('Courses')
        render html: instructors.tag.strong('Instructors')
    end
end
