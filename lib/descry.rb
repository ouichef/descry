# frozen_string_literal: true

require_relative "descry/version"

module Descry
  class Error < StandardError; end
  class PonderTheOrb
    attr_reader :note_path

    def initialize(note_path:)
      @note_path = note_path
    end
  end
end
