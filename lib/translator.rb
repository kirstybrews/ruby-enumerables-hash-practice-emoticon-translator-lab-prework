require 'pry'

def load_library(yaml_file)
  require "yaml"
  emoticons = YAML.load_file('./lib/emoticons.yml')
  emoticons.each do |key, value|
    emoticons[key] = {
      :english => value[0],
      :japanese => value[1]
    }
  end
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end