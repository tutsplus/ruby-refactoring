class User
  attr_reader :name, :type, :options

  def initialize name, type, options = {}
    @name    = name
    @type    = type
    @options = options
  end
  
  def public_key_matches?
    # Do some logic
    true
  end

  def oauth_authenticates?
    # Do some logic
    true
  end

  class << self
    def login name, options = {}
      user = USERS.find { |u| u.name == name }

      case user.type
        when :password
          return user.options[:password] == options[:password]
        when :public_key
          return user.public_key_matches?
        when :oauth
          return user.oauth_authenticates?
      end
    end
  end
end
