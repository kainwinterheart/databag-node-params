#
# Cookbook Name:: databag-node-params
# Recipe:: default
#
# Copyright 2014, Gennadiy Filatov
#

databag_params = search( :node,	"name:#{node.name}" )

unless databag_params.nil?
	databag_params.each do |data|
		node.consume_attributes( data.to_hash )
	end
end

