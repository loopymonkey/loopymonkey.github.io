# A plugin for embedding videos from Vimeo using a simple Liquid tag, ie: {% vimeo 12345678 %}.
# # Based of the Youtube plugin from http://www.portwaypoint.co.uk/jekyll-youtube-liquid-template-tag-gist/

module Jekyll
	  class Vimeo < Liquid::Tag

			      def initialize(name, id, tokens)
				            super
					          @id = id
						      end

			          def render(context)
					        %(<style>.embed-container { position: relative; padding-bottom: 56.25%; height: 0; overflow: hidden; max-width: 100%; } .embed-container iframe, .embed-container object, .embed-container embed { position: absolute; top: 0; left: 0; width: 100%; height: 100%; }</style><div class='embed-container'><iframe src='https://player.vimeo.com/video/#{@id}' frameborder='0' webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe></div>)
						    end
				    end
end

Liquid::Template.register_tag('vimeo', Jekyll::Vimeo)