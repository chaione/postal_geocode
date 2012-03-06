PostalGeocode::Application.routes.draw do
  get "postal_codes/:id" => "postal_codes#show"
end
