class TaskController < ApplicationController
    def index
        @task = Task.all
    end
end
