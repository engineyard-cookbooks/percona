module Percona
  module AttributePasswords
    # mysql root
    def root_password
      node[:percona][:server][:root_password]
    end

    # debian script user password
    def debian_password
      node[:percona][:server][:debian_password]
    end

    # password for user responsbile for replicating in master/slave environment
    def replication_password
      node[:percona][:server][:replication_password]
    end
  end
end
