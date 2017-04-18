def reformat_languages(languages)
  formatted_langs = {}
  languages.each do |lang_style, langs|
    langs.each do |language, description|
      description.each do |attribute, value|
        if formatted_langs[language].nil?
          formatted_langs[language] = {}
        end
        formatted_langs[language][:style] ||= []
        formatted_langs[language][:style] << lang_style
        if formatted_langs[language][attribute].nil?
          formatted_langs[language][attribute] = value
        end
      end
    end
  end
  formatted_langs
end
