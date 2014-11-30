class Contato
  include ActiveModel::Model

  attr_accessor :nome, :email, :cidade, :estado, :telefone, :assunto, :mensagem

  validates_presence_of :nome, :email, :cidade, :estado, :telefone, :assunto, :mensagem
  validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
end
