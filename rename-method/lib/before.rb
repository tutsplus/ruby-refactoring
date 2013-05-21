class UserService
  USERNAME = "josemota"
  PASSWORD = "secret"

  class << self
    def login username, password
      username == USERNAME && password == PASSWORD
    end
  end
end
