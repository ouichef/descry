module Descry
  class Scribe
    attr_reader :file_location

    def initialize(file: 'notes/new_note.md')
      @file_location = file
    end

    # @doc note_with_code
    # This is for a quick code snippet with a prefix explainer
    def note_with_code(note: '', code: {})
      md = <<~MSG.chomp
        #{note}

        ```ruby
        #{pp code}
        ```
      MSG
      append(md)
    end

    # append a note to a file
    def quick_note(msg) = append(msg)

    def append(msg)
      FileUtils.touch(file_location) unless File.file?(file_location)
      size = File.size(file_location) + 1
      File.write(file_location, msg, size, mode: 'a')
    end

    alias nwc note_with_code
    alias qn quick_note
  end
end
