class BeforeActionCallbackMailer < ApplicationMailer
  before_action :set_template_value, except: [:welcome3]
  before_action :set_template_value
  before_action :set_template_value, only: [:welcome3]

  def welcome1
    mail(to: 'welcome1@example.com')
  end

  def welcome2
    mail(to: 'welcome2@example.com')
  end

  def welcome3
    mail(to: 'welcome3@example.com')
  end

  private

  def set_template_value
    @template_value = 'bar'
  end
end
