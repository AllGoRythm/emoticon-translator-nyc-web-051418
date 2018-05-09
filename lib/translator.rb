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
  binding.pry
end

def get_japanese_emoticon(path, emoticon)
  hash = load_library(path)
    if hash['get_emoticon'][emoticon]
      hash['get_emoticon'][emoticon]
    else
      "Sorry, that emoticon was not found"
    end
end

def get_english_meaning(path, emoticon)
  hash = load_library(path)
    if hash['get_meaning'][emoticon]
      hash['get_meaning'][emoticon]
    else
      "Sorry, that emoticon was not found"
    end
end
