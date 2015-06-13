require 'pronto'
require 'poper'

module Pronto
  class Poper < Runner
    def run(patches, commit)
      return [] unless patches

      poper_runner = ::Poper::Runner.new(commit, patches.repo.path.to_s)

      poper_runner.run
        .select { |error| error.commit != commit }
        .map { |error| message_for(error) }
    end

    def message_for(error)
      Message.new(nil, nil, :warning, error.message.capitalize, error.commit)
    end
  end
end
