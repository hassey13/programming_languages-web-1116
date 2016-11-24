def reformat_languages(languages)
 # your code here
 language_hash = {}
 languages.each do |style, list|
      list.each do |language, type_obj|
            language = language.to_sym
           if !language_hash[language]
              language_hash[language] = type_obj
              language_hash[language][:style] = [style]
           else
              language_hash[language][:style] << style
           end
      end
 end
 return language_hash
end

# {
#   :oo => {
#     :ruby => {
#       :type => "interpreted"
#     },
#     :javascript => {
#       :type => "interpreted"
#     },
#     :python => {
#       :type => "interpreted"
#     },
#     :java => {
#       :type => "compiled"
#     }
#   },
#   :functional => {
#     :clojure => {
#       :type => "compiled"
#     },
#     :erlang => {
#       :type => "compiled"
#     },
#     :scala => {
#       :type => "compiled"
#     },
#     :javascript => {
#       :type => "interpreted"
#     }
#
#   }
# }
