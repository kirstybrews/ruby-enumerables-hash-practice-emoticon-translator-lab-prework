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

def get_japanese_emoticon(yaml_file, emoticon)
  yaml_file = load_library(yaml_file)
  yaml_file.each do |key, value|
    if value[:english] == emoticon
      binding.pry
      return value[:japanese]
    else
      return 'Sorry, that emoticon was not found'
    end
  end
end

def get_english_meaning
  yaml_file = load_library(yaml_file)
  yaml_file.each do |key, value|
    if value[:english] == emoticon
      binding.pry
      return value[:japanese]
    else
      return 'Sorry, that emoticon was not found'
    end
  end
end