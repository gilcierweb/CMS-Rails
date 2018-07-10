CMS-Rails
=========
Projeto Open Source de GilcierWeb

Versão: 1.0 Alpha.

[![Build Status](https://travis-ci.org/gilcierweb/CMS-Rails.svg?branch=master)](https://travis-ci.org/gilcierweb/CMS-Rails) [![Code Climate](https://codeclimate.com/github/gilcierweb/CMS-Rails/badges/gpa.svg)](https://codeclimate.com/github/gilcierweb/CMS-Rails)

Data de Criação: Seg, Jul  7 2014 19:36:46.

Autor: GilcierWeb gilcierweb@gmail.com.

Website: http://gilcierweb.com.br.

Licença: http://www.opensource.org/licenses/mit-license.php The MIT License.

Minha intenção com esse projeto é deixar material para as pessoas que estão iniciando com Ruby on Rails terem como exemplo.

Quem quiser contribuir com o projeto entre contato gilcierweb@gmail.com - http://gilcierweb.com.br pra ser adicionado ao projeto.

Link de demonstração

Frontend

https://cmsrails.herokuapp.com

Backend

https://cmsrails.herokuapp.com/adm/dashboard

Instalação do ruby e rails.

Versão do rails: >= 4

Instalando Ruby e Rails no Ubuntu

https://gorails.com/setup/ubuntu/14.04.

Comandos utilidados até agora no projeto:

```shell
rails new cmsrails -d mysql
cd /cmsrails 
sudo bundle install
sudo rake db:create
sudo rake db:create:all
sudo rake db:migrate
sudo rails server
rails generate controller Adm/dashboard index --no-assets --no-stylesheets --no-helpers
rails generate scaffold Adm/Banner titulo:string imagem:string link:string --no-assets --no-stylesheets --no-helpers
rails generate scaffold Adm/Noticia titulo:string subtitulo:text descricao:text img_capa:string autor:string --no-assets --no-stylesheets --no-helpers
sudo apt-get install imagemagick libmagickwand-dev
gem install rmagick mini_magick
rails generate uploader noticia
rails generate uploader banner
rails generate uploader galeria_imagem
rails generate scaffold Adm/Video titulo:string url_codigo:string --no-assets --no-stylesheets --no-helpers
rails generate scaffold Adm/Galeria titulo:string descricao:text imagem_capa:string --no-assets --no-stylesheets --no-helpers
rails generate scaffold Adm/GaleriasImagem galeria_id:integer imagem:string --no-assets --no-stylesheets --no-helpers
rails generate controller Home index sobre noticias noticia_view galerias galeria_view videos contato --no-helpers --no-assets --no-stylesheets  
rails generate scaffold Adm/Video titulo:string url_codigo:integer --no-assets --no-stylesheets --no-helpers
rails generate scaffold User username:string email:string password:string salt:string role_id:integer
rails generate migration rename_password_on_users
rails generate controller Sessions new
rails generate model Session --migration=false
rails generate model Contato --migration=false
rails generate cancan:ability
rake db:migrate:down VERSION=20141119150458
rails generate scaffold Auth/Role name:string title:string description:text --no-assets --no-stylesheets --no-helpers
rails generate migration AddRoleIdToUsers role_id:integer:index
rails generate devise:install
rails generate devise user
rake db:migrate
rails generate devise:views
rake db:seed
rails generate rspec:install
bundle exec rspec
bundle exec rspec spec/models

rails app:update

bundle exec rails webpacker:install

```

Observações:
cuidado com os singular e plural na hora de definir os nomes das tabelas ver arquivo /cmsrails/config/initializers/inflections.rb.
