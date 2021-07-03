class TasksController < ApplicationController
    # Read
    # See all tasks
    def index
        @tasks = Task.all
    end
    # See details about one task
    def show
        @task = Task.find(params[:id])
    end
    # Create a restaurant
    def new
        @task = Task.new # needed to instantiate the form_for
    end

    def create
        @task = Task.new(task_params) 
        # DIFF taks_params & params[:task]
        @task.save
        # Will raise ActiveModel::ForbiddenAttributesError
        redirect_to task_path(@task)
    end

    # Update a restaurant
    def edit
        @task = Task.find(params[:id])
    end

    def update
        @task = Task.find(params[:id])
        @task.update(task_params)
        redirect_to task_path(@task)
    end
    # Destroy a restaurant

    def destroy
        @task = Task.find(params[:id])
        @task.destroy

        redirect_to tasks_path
    end

    private

    def task_params
        params.require(:task).permit(:title, :details, :completed)
    end
end
