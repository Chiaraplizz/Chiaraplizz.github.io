module Jekyll
  module HideCustomBibtex
    # Removes website-only fields (preview, html, award, ...) from a BibTeX string.
    def hideCustomBibtex(input)
      keywords = @context.registers[:site].config['filtered_bibtex_keywords'] || []
      keywords.each do |keyword|
        input = input.gsub(/^\s*#{Regexp.escape(keyword)}\s*=.*\n/i, '')
      end
      input.gsub(/,(\s*\n\})\s*\z/, '\1')
    end
  end
end

Liquid::Template.register_filter(Jekyll::HideCustomBibtex)
