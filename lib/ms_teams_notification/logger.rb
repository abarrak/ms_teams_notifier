require "logger"
require "singleton"

module MsTeamsNotification
  class Logger
    include Singleton

    def initialize
      @logger = ::Logger.new $stdout
      @logger.level = ::Logger::DEBUG
    end

    def msg *message, level: :info
      @logger.send level.to_s, message.join("").to_s if @logger.respond_to?(level)
    end
  end
end
