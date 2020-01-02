class ApplicationController < ActionController::Base
    def hello
        render html: "rails6 docker template"
    end
end
