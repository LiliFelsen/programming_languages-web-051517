def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, language|
    language.each do |language_name, type|
      type.each do |type_key, type_value|
        if new_hash[language_name].nil?
          new_hash[language_name] = {type_key => type_value, :style => [style]}
        else
          new_hash[language_name][:style] << style
        end
      end
    end
  end
  new_hash
end
