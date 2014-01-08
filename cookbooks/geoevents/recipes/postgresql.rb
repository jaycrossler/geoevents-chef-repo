node.set['postgresql']['pg_hba'] = [
  {:type => 'local', :db => 'all', :user => 'postgres', :addr => nil, :method => 'ident'},
  {:type => 'local', :db => 'all', :user => 'all', :method => 'md5'},
  {:type => 'host', :db => 'all', :user => 'all', :addr => '192.168.10.1/32', :method => 'md5'},
  {:type => 'host', :db => 'all', :user => 'all', :addr => '127.0.0.1/32', :method => 'md5'},
  {:type => 'host', :db => 'all', :user => 'all', :addr => '::1/128', :method => 'md5'}
]

node.set['postgresql']['server']['packages'] = ["postgresql-#{node['postgresql']['version']} postgresql-server-dev-#{node['postgresql']['version']}"]

include_recipe 'postgresql::server'
