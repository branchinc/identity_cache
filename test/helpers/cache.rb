require 'active_support/cache/dalli_store'
module Rails

  class Cache < ActiveSupport::Cache::MemCacheStore
  end

  def self.cache
    #@@cache ||= Cache.new("localhost:#{$memcached_port}")
    @@cache ||= ActiveSupport::Cache::DalliStore.new
  end

  class Logger
    def info(*args)
    end

    def debug(*args)
    end

    def error(*args)
    end

    def debug?(*args)
    end
  end

  def self.logger
    @logger ||= Logger.new
  end
end
