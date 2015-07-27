# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )

Rails.application.config.assets.precompile  += %w(*.svg *.eot *.woff *.ttf *.gif *.png *.ico *.swf *.xap masonry.pkgd.min.js jquery.colorbox-min.js i18n/jquery.colorbox-pt-BR.js sb-admin.css)
