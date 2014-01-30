class Chef::Recipe::AttributePasswords
  attr_accessor :node

  def initialize(node)
    @node = node
  end

  # mysql root
  def root_password
    percona_server[:root_password]
  end

  # debian script user password
  def debian_password
    percona_server[:debian_password]
  end

  # password for user responsbile for replicating in master/slave environment
  def replication_password
    percona_server[:replication_password]
  end

  private
  def percona_server
    @node[:percona][:server]
  end
end
