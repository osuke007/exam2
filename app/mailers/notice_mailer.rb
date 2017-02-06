class NoticeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_photo.subject
  #
  def sendmail_photo
    @product = product

    mail to: "osukecg@gmail.com",
         subject: '【写真共有】写真がアップされました'
  end
end
