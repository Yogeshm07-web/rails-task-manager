Rails.application.routes.draw do
   # ... (autres routes)

  # Route pour afficher le formulaire d'édition d'une tâche
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'

  # Route pour gérer la mise à jour d'une tâche via PATCH
  patch 'tasks/:id', to: 'tasks#update'
end
