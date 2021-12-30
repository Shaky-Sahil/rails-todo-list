class TaskController < ApplicationController
    def index
        @task = Task.all
    end

    def show
        @task = Task.find(params[:id])
    end

    def new
        @task = Task.new
    end

    def create
        @task = Task.new(body: params[:task][:task], status: params[:task][:status])
        if (@task.save)
            redirect_to task_path(@task)
        else
            render :show
        end
    end
end
