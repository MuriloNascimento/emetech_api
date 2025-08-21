Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*'  # ou restrinja para o domínio do seu front: 'https://meu-frontend.com'

    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head],
      expose: ['Authorization']
  end
end
