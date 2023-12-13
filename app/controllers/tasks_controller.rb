# app/controllers/tasks_controller.rb

class TasksController < ApplicationController
  # ... (autres actions)

  # Nouvelle action pour afficher le formulaire d'édition d'une tâche
  def edit
    @task = Task.find(params[:id])
  end

  # Nouvelle action pour gérer la mise à jour d'une tâche via PATCH
  def update
    @task = Task.find(params[:id])

    if @task.update(task_params)
      redirect_to @task, notice: 'La tâche a été mise à jour avec succès.'
    else
      render :edit
    end
  end

  private

  def task_params
    params.require(:task).permit(:title, :description, :completed)
  end
end
