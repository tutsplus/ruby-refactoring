class UserService
  USERNAME = "josemota"
  PASSWORD = "secret"

  class << self
    def sign_in username, password
      username == USERNAME && password == PASSWORD
    end
  end
end
