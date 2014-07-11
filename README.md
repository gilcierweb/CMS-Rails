CMS-Rails
=========
Projeto Open Source de GilcierWeb

Versão: 1.0.
Data de Criação: Seg, Jul  7 2014 19:36:46.
Autor: GilcierWeb gilcierweb@gmail.com.
Website: http://gilcierweb.com.br.
Licença: http://www.opensource.org/licenses/mit-license.php The MIT License.

Minha intenção com esse projeto é deixar material para as pessoas que estão iniciando com Ruby on Rails terem como exemplo.

Quem quiser contribuir com o projeto entre contato gilcierweb@gmail.com - http://gilcierweb.com.br pra ser adicionado ao projeto.

Comandos utilidados até agora no projeto:

- rails generate controller Adm/dashboard index --no-assets --no-stylesheets --no-helpers
- rails generate scaffold Adm/Banner titulo:string imagem:string link:string --no-assets --no-stylesheets --no-helpers
- rails generate scaffold Adm/Noticia titulo:string subtitulo:text content:text img_capa:string autor:string --no-assets --no-stylesheets --no-helpers
- rails generate controller Home index sobre noticias noticia_show galerias galeria_show videos contato --no-helpers --no-assets --no-stylesheets 

Observações:
cuidado com os singular e plural na hora de definir os nomes das tabelas ver arquivo /cmsrails/config/initializers/inflections.rb.