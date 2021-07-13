class BeforeActionFilterController < ApplicationController
  before_action :set_template_value, except: [:index3]
  before_action :set_template_value
  before_action :set_template_value, only: [:index3]

  def index1
  end

  def index2
  end

  def index3
  end

  def send_mail
    BeforeActionCallbackMailer.welcome1.deliver_now
    BeforeActionCallbackMailer.welcome2.deliver_now
    BeforeActionCallbackMailer.welcome3.deliver_now
  end

  private

  def set_template_value
    @template_value = 'foo'
  end
end
