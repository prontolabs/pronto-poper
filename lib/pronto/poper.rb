require 'pronto'
require 'poper'

module Pronto
  class Poper < Runner
    def run(patches, commit)
      return [] unless patches

      poper_runner = ::Poper::Runner.new(commit, patches.owner.repo.path)
      errors = poper_runner.run

      messages_for(patches, errors)
    end

    def messages_for(patches, errors)
      errors.map do |error|
        Message.new(nil, nil, :warning, error.message.capitalize, error.commit)
      end
    end
  end
end
