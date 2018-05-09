# require modules here
require "yaml"
require "pry"

def load_library(path)
  emojis = YAML.load_file(path)
  hash = {"get_meaning" => {}, "get_emoticon" => {} }
    emojis.each do |meaning, emot|
      japanese = emot[1]
      english = emot[0]
      hash['get_meaning'][japanese] = meaning
      hash['get_emoticon'][english] = jap
    end
  hash
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
