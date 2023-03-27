


require_relative '../app/handlers/haberdasher_handler.rb'
require_relative '../../proto/haberdasher_twirp.rb'

handler = HaberdasherHandler.new
service = HaberdasherService.new(handler)

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  service.class.rpcs.keys.each do |rpc_method|
    path = service.full_name + '/' + rpc_method.to_s
    scope :api do
      match path, to: service, format: false, via: :post
    end
  end

end
