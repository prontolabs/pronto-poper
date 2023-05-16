require 'pronto'
require 'poper2'

module Pronto
  class Poper2 < Runner
    def run
      return [] unless @patches

      poper_runner = ::Poper2::Runner.new(@commit, repo_path.to_s)

      poper_runner.run
        .select { |error| error.commit != @commit }
        .map { |error| message_for(error) }
    end

    def message_for(error)
      Message.new(nil, nil, :warning, error.message.capitalize, error.commit,
                  self.class)
    end
  end
end
