Lita.configure do |config|
  # The name your robot will use.
  config.robot.mention_name = 'dotty'
  config.robot.name = 'dotty'
  config.robot.adapter = :ms_teams
  config.adapters.ms_teams.default_url = 'https://smba.trafficmanager.net/emea/'
  config.adapters.ms_teams.default_bot_id = 'https://smba.trafficmanager.net/emea/'
  config.adapters.ms_teams.default_bot_name = 'https://smba.trafficmanager.net/emea/'
  config.adapters.ms_teams.app_id = 'bab03fba-2cad-4589-b9b5-993559f41e20'
  config.handlers.ms_teams.emulator_mode = false
  config.handlers.ms_teams.app_secret = 'jA844rhiG5DOPa?guc/xgrtO=]QBd[Ze'
  config.handlers.ms_teams.tenant_id = 'a6ea47be-ea24-4e93-91e4-b1d244e48721'
  # The locale code for the language to use.
  # config.robot.locale = :en

  # The severity of messages to log. Options are:
  # :debug, :info, :warn, :error, :fatal
  # Messages at the selected level and above will be logged.
  config.robot.log_level = :info

  # An array of user IDs that are considered administrators. These users
  # the ability to add and remove other users from authorization groups.
  # What is considered a user ID will change depending on which adapter you use.
  # config.robot.admins = ["1", "2"]

  # The adapter you want to connect with. Make sure you've added the
  # appropriate gem to the Gemfile.

  ## Example: Set options for the chosen adapter.
  # config.adapter.username = "myname"
  # config.adapter.password = "secret"

  ## Example: Set options for the Redis connection.
  # config.redis.host = "127.0.0.1"
  # config.redis.port = 1234

  ## Example: Set configuration for any loaded handlers. See the handler's
  ## documentation for options.
  # config.handlers.some_handler.some_config_key = "value"
end
