# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end

# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.acronym 'RESTful'
# end
# encoding: utf-8
# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end

# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.acronym 'RESTful'
# end
# require 'active_support/inflector/inflections'

# activesupport::inflector.inflections(:en) do |inflect|
#   inflect.irregular 'qualificacao', 'qualificacoes'
#   inflect.irregular 'receita', 'receitas'
# end

ActiveSupport::Inflector.inflections do |inflect|
inflect.clear
 
#general rule: add "s" to the end of the word
#casa - casas
inflect.plural /^([a-zA-z]*)a$/i, '\1as'
#pe - pes
inflect.plural /^([a-zA-z]*)e$/i, '\1es'
#no example
inflect.plural /^([a-zA-z]*)i$/i, '\1is'
#carro - carros
inflect.plural /^([a-zA-z]*)o$/i, '\1os'
#pneu - pneus
inflect.plural /^([a-zA-z]*)u$/i, '\1us'
 
#if word ends in "r" or "z", add "es"
#luz - luzes
#flor - flores
#arroz - arrozes
#inflect.plural /^([a-zA-z]*)r$/i, '\1res'
#inflect.plural /^([a-zA-z]*)z$/i, '\1zes'
 
#if word ends in "al", "el", "ol", "ul": trade "l" with "is"
#farol - farois
#hospital - hospitais
#telemovel - telemoveis
#pincel - pinceis
#anzol - anzois
inflect.plural /^([a-zA-z]*)al$/i, '\1ais'
inflect.plural /^([a-zA-z]*)el$/i, '\1eis'
inflect.plural /^([a-zA-z]*)ol$/i, '\1ois'
inflect.plural /^([a-zA-z]*)ul$/i, '\1uis'
 
#if word ends in "il" and has tónic accent in last syllable, trade "il" with "is"
#cantil - cantis
inflect.plural /^([a-zA-z]*)il$/i, '\1is'
 
#TODO
#if word ends in "il" and has tónic accent in penultimate syllable, trade "il" with "eis"
#no example
 
#if word ends in "m", trade "m" with "ns"
#armazem - armazens
#portagem - portagens
inflect.plural /^([a-zA-z]*)m$/i, '\1ns'
 
#TODO
#if word ends in "s" and has one silable, trade "s" with "es"
#no example
#inflect.plural /^([a-zA-z]*)e$/i, '\1es'
 
#TODO
#if word ends in "x" stays the same
#no example... professor X, maybe?
#inflect.plural /^([a-zA-z]*)x$/i, '\1xes'
 
#if word ends in "ão", there are three ways of plural: ãos, ães, ões
#NOTE: hard to detect, so I'll use the most common case
#and then use irregular cases for the others. if someone knows of
#more cases please add to the list &amp;amp;amp;amp; mail me. thanks!
#
#cão - cães
#colchão - colchões
#portão - portões
#pão - pães
#alemão - alemães
#chão - ?
#pilhão - pilhões
#canhão - canhões
#bidão - bidões
#mão - mãos
inflect.plural /^([a-zA-z]*)ao$/i, '\1oes'
# inflect.irregular 'cao', 'caes'
# inflect.irregular 'pao', 'paes'
#inflect.irregular 'mao', 'maos'
#inflect.irregular 'alemao', 'alemaes'
 
############################
#singularize rules #
############################
 
#pes - pe
#carros - carro
#pneus - pneu
inflect.singular /^([a-zA-z]*)as$/i, '\1a'
inflect.singular /^([a-zA-z]*)es$/i, '\1e'
inflect.singular /^([a-zA-z]*)is$/i, '\1i'
inflect.singular /^([a-zA-z]*)os$/i, '\1o'
inflect.singular /^([a-zA-z]*)us$/i, '\1u'
 
#luzes - luz
#flores - flor
#arrozes - arroz
inflect.singular /^([a-zA-z]*)res$/i, '\1r'
inflect.singular /^([a-zA-z]*)zes$/i, '\1z'
 
#cantis - cantil
inflect.singular /^([a-zA-z]*)is$/i, '\1il'
 
#farois - farol
#hospitais - hospital
#telemoveis - telemovel
#pinceis - pincel
#anzois - anzol
inflect.singular /^([a-zA-z]*)ais$/i, '\1al'
inflect.singular /^([a-zA-z]*)eis$/i, '\1el'
inflect.singular /^([a-zA-z]*)ois$/i, '\1ol'
inflect.singular /^([a-zA-z]*)uis$/i, '\1ul'
 
#armazens - armazem
#portagens - portagem
inflect.singular /^([a-zA-z]*)ns$/i, '\1m'
 
#cães - cão
#colchões - colchão
#portões - portão
#pães - pão
#alemães - alemão
inflect.singular /^([a-zA-z]*)oes$/i, '\1ao'
inflect.singular /^([a-zA-z]*)aes$/i, '\1ao'
inflect.singular /^([a-zA-z]*)aos$/i, '\1ao'


 # Incontáveis
#inflect.uncountable %w( tórax tênis ônibus lápis fênix )
 
# Irregulares
#inflect.irregular "país", "países"
# inflect.irregular 'qualificacao', 'qualificacoes'
# inflect.irregular 'receita', 'receitas'
  inflect.irregular 'receita', 'receitas'
  inflect.irregular 'noticia', 'noticias'
  inflect.irregular 'banner', 'banners'

end