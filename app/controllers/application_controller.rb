class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    def hello
        render html: "Hello, world!"
    end

    def links
        render html: "Welcome to my course catalog!"
        render html: 'Click <a href="courses#index">here</a> to see all courses.'
    end
end
