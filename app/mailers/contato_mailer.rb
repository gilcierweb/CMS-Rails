class ContatoMailer < ActionMailer::Base
  default from: "from@example.com"
  default to: "gilcierweb@example.com"

  def new_message(message)
    @contato = message

    mail(from: @contato.email, subject: t("contato_mailer.contato_email.title_subject")) do |format|
      format.html { render 'contato_email' }
      format.text { render 'contato_email' }
    end
  end
end
