# Code generated by protoc-gen-twirp_ruby 1.10.0, DO NOT EDIT.
require 'twirp'
require_relative 'haberdasher_pb.rb'

class HaberdasherService < ::Twirp::Service
  service 'Haberdasher'
  rpc :GetAll, Google::Protobuf::Empty, HatList, :ruby_method => :get_all
  rpc :MakeHat, Size, Hat, :ruby_method => :make_hat
end

class HaberdasherClient < ::Twirp::Client
  client_for HaberdasherService
end
