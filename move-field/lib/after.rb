PHONE_CODES = {
  en_gb: "44",
  pt:    "351"
}

class Phone
  attr_reader :number, :locale

  def initialize number, locale
    @number = number
    @locale = locale
  end

  def to_s
    PHONE_CODES[locale] + " " + number
  end
end

class Person
  attr_reader :phone

  def initialize(locale: :en_gb, phone: nil)
    @phone = Phone.new phone, locale
  end

  def full_phone
    ["+", phone].join
  end
end
