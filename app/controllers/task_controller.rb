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

    def edit
        @task = Task.find(params[:id])
    end

    def update 
        @task = Task.find(params[:id])
        if (@task.update(body: params[:task][:task], status: params[:task][:status]))
            redirect_to task_path(@task)
        else
            render :edit
        end
    end

    def destroy
        @task = Task.find(params[:id])
        @task.destroy
        redirect_to action: :index
    end
end
