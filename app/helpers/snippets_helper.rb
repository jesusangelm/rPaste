module SnippetsHelper
  #Lista los lenguajes soportados por Rouge
  def lexer_list
    supported_langs = Array.new

    ugly_list = Rouge::Lexer.all
    ugly_list.each do |lang|
      supported_langs << lang.to_s.split("::")[2].downcase
    end
    supported_langs
  end
end
