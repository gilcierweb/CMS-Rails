CMS-Rails
=========
Projeto Open Source de GilcierWeb

Versão: 1.0 Alpha.

Data de Criação: Seg, Jul  7 2014 19:36:46.

Autor: GilcierWeb gilcierweb@gmail.com.

Website: http://gilcierweb.com.br.

Licença: http://www.opensource.org/licenses/mit-license.php The MIT License.

Minha intenção com esse projeto é deixar material para as pessoas que estão iniciando com Ruby on Rails terem como exemplo.

Quem quiser contribuir com o projeto entre contato gilcierweb@gmail.com - http://gilcierweb.com.br pra ser adicionado ao projeto.

Link de demonstração

https://cmsrails.herokuapp.com/

https://cmsrails.herokuapp.com/adm/dashboard/index

Instalação do ruby e rails.

Versão do rails: >= 4

https://gorails.com/setup/ubuntu/14.04.

Comandos utilidados até agora no projeto:

- rails new cmsrails -d mysql
- cd /cmsrails 
- sudo bundle install
- sudo rake db:create
- sudo rake db:create:all
- sudo rake db:migrate
- sudo rails server
- rails generate controller Adm/dashboard index --no-assets --no-stylesheets --no-helpers
- rails generate scaffold Adm/Banner titulo:string imagem:string link:string --no-assets --no-stylesheets --no-helpers
- rails generate scaffold Adm/Noticia titulo:string subtitulo:text descricao:text img_capa:string autor:string --no-assets --no-stylesheets --no-helpers
- sudo apt-get install imagemagick libmagickwand-dev
- gem install rmagick mini_magick
- rails generate uploader noticia
- rails generate uploader banner
- rails generate uploader galeria_imagem
- rails generate scaffold Adm/Video titulo:string url_codigo:string --no-assets --no-stylesheets --no-helpers
- rails generate scaffold Adm/Galeria titulo:string descricao:text imagem_capa:string --no-assets --no-stylesheets --no-helpers
- rails generate scaffold Adm/GaleriasImagem galeria_id:integer imagem:string --no-assets --no-stylesheets --no-helpers
- rails generate controller Home index sobre noticias noticia_view galerias galeria_view videos contato --no-helpers --no-assets --no-stylesheets  
- rails generate scaffold Adm/Video titulo:string url_codigo:integer --no-assets --no-stylesheets --no-helpers

Observações:
cuidado com os singular e plural na hora de definir os nomes das tabelas ver arquivo /cmsrails/config/initializers/inflections.rb.
