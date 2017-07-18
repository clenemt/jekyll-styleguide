# Taken from https://github.com/twbs/bootstrap/blob/v4-dev/docs/_plugins/highlight_alt.rb

module Jekyll
  module Tags
    class ResizeBlock < Liquid::Block
      include Liquid::StandardFilters

      # The regular expression syntax checker. Start with the language specifier.
      # Follow that by zero or more space separated options that take one of three
      # forms: name, name=value, or name="<quoted list>"
      #
      # <quoted list> is a space-separated list of numbers
      SYNTAX = /^([a-zA-Z0-9.+#-]+)((\s+\w+(=(([a-zA-Z0-9,_-])+|"([0-9]+\s)*[0-9]+"))?)*)$/

      def initialize(tag_name, markup, tokens)
        super
        if markup.strip =~ SYNTAX
          @lang = $1.downcase
          @options = {}
          if defined?($2) && $2 != ''
            # Split along 3 possible forms -- key="<quoted list>", key=value, or key
            $2.scan(/(?:\w+(?:=(?:(?:[a-zA-Z0-9,_-])+|"[^"]*")?)?)/) do |opt|
              key, value = opt.split('=')
              # If a quoted list, convert to array
              if value && value.include?('\"')
                value.gsub!(/"/, '')
                value = value.split
              elsif value && value.include?(",")
                value.gsub!(/,/, ' ')
              end
              @options[key.to_sym] = value || true
            end
          end
          @options[:linenos] = false
        else
          raise SyntaxError.new <<-eos
Syntax Error in tag 'example_resize' while parsing the following markup:

  #{markup}

Valid syntax: example_resize <lang>
eos
        end
      end

      def render(context)
        prefix = context['highlighter_prefix'] || ''
        suffix = context['highlighter_suffix'] || ''
        @base_url = context.registers[:site].config['baseurl'] || ''
        @js_url = context.registers[:site].config['styleguide-js'] || ''
        @css_url = context.registers[:site].config['styleguide-css'] || ''

        code = super.to_s.strip

        output = case context.registers[:site].highlighter

        when 'rouge'
          render_rouge(code)
        end

        rendered_output = resizable_example(code) + add_code_tag(output)
        prefix + rendered_output + suffix
      end

      def resizable_example(code)
        output = iframify(code)

        example_code = [
          "<div class=\"doc-example doc-example--resizable\">",
            output,
            "<div class=\"doc-example__drag-bar doc-example__drag-bar--left\"></div>",
            "<div class=\"doc-example__drag-bar doc-example__drag-bar--right\"></div>",
          "</div>"
        ].join('')

        example_code
      end

      def render_rouge(code)
        require 'rouge'
        formatter = Rouge::Formatters::HTML.new(line_numbers: @options[:linenos], wrap: false)
        lexer = Rouge::Lexer.find_fancy(@lang, code) || Rouge::Lexers::PlainText
        code = formatter.format(lexer.lex(code))
        "<div class=\"highlight\"><pre>#{code}</pre></div>"
      end

      def add_code_tag(code)
        # Add nested <code> tags to code blocks
        code = code.sub(/<pre>\n*/,'<pre><code class="language-' + @lang.to_s.gsub('+', '-') + '">')
        code = code.sub(/\n*<\/pre>/,'</code></pre>')
        code.strip
      end

      def iframify(code)
        # Grab the resources to add inside the iframe
        @css_url = '/dist/css/styleguide.css' if @css_url.empty?
        @js_url = '/dist/js/styleguide.js' if @js_url.empty?

        # Create iframe
        iframe_code = [
            "<!DOCTYPE html>",
              "<head>",
                "<meta charset=\"utf-8\" />",
                "<link href=\"#{@base_url}#{@css_url}\" rel=\"stylesheet\">",
                "<link href=\"#{@base_url}/assets/css/frame.css\" rel=\"stylesheet\">",
              "</head>",
              "<body style=\"margin: 0\">",
                "<div class=\"#{@options[:div]}\">",
                  code,
                "</div>",
                "<script src=\"#{@base_url}#{@js_url}\"></script>",
              "</body>",
            "</html>"
        ].join('')

        "<iframe srcdoc=\"#{iframe_code.gsub("\"", "&quot;")}\" frameBorder=\"0\" width=\"100%\" onload=\"this.height=this.contentDocument.body.clientHeight;\" sandbox=\"allow-same-origin\"></iframe>"
      end
    end
  end
end

Liquid::Template.register_tag('example_resize', Jekyll::Tags::ResizeBlock)
