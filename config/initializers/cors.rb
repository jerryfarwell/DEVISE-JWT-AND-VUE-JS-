# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins "*"   #ici il peut etre remplacer par https://localhost3000  ou le lien du site en production   l'étoile ici signifie simplement que c'est totalement ouvert
 
      resource "*",
       headers: :any,
        methods: [:get, :post, :put, :patch, :delete, :options, :head]   # ici on determine quels sont les methodes authorisées en faisons un fetch
    end
  end
