# require modules here
require "yaml"
require "pry"

def load_library
  emojis = YAML.load_file(path)
  hash = {"get_meaning" => {}, "get_emoticon" => {} }
    emojis.each do |meaning, emot|
      jap = emot[1]
      eng = emot[0]
      hash['get_meaning'][jap] = meaning
      hash['get_emoticon'][eng] = jap
    end
  hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
