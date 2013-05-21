class User
  attr_reader :name, :type, :options

  def initialize name, type, options = {}
    @name    = name
    @type    = type
    @options = options

    @strategy = case @type
      when :password
        Auth::Password.new self
      when :public_key
        Auth::PublicKey.new self
      when :oauth
        Auth::OAuth.new self
    end
  end
  
  def auth! options
    @strategy.auth? options
  end

  class << self
    def login name, options = {}
      user = USERS.find { |u| u.name == name }

      user.auth! options
    end
  end
end

module Auth
  class Password
    def initialize user
      @user = user
    end

    def auth? options
      @user.options[:password] == options[:password]
    end
  end

  class PublicKey
    def initialize user
      @user = user
    end

    def auth? options
      # Do some logic
      true
    end
  end

  class OAuth
    def initialize user
      @user = user
    end
  
    def auth? options
      # Do some logic
      true
    end
  
  end
end
