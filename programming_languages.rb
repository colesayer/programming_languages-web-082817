#check to see if the new_language_hash[name] already exists and if it does,
#add relevant information to the language data

def reformat_languages(languages)
  new_language_hash = {}
  languages.each do |style, language|
    language.each do |name, data|
      data.each do |type, value|
        if new_language_hash[name]
          new_language_hash[name][:style] << style
        else
        new_language_hash[name] = {type: value, style: [style]}


      end
      end
    end
  end
  new_language_hash
end
