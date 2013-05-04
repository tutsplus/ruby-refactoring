PHONE_CODES = {
  en_gb: "44",
  pt:    "351"
}

class Phone
  attr_reader :number

  def initialize number
    @number = number
  end

  def to_s
    number
  end
end

class Person
  attr_reader :locale, :phone

  def initialize(locale: :en_gb, phone: nil)
    @locale = locale
    @phone = Phone.new phone
  end

  def full_phone
    ["+", PHONE_CODES[locale], " ", phone].join
  end
end
