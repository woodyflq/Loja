import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :test, Test.Repo,
  username: "mbrbesny",
  password: "2nXwm207_ai4L_g_txXs-PTU72iyk9NU",
  hostname: "localhost",
  database: "postgres://mbrbesny:2nXwm207_ai4L_g_txXs-PTU72iyk9NU@mouse.db.elephantsql.com/mbrbesny",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :test, TestWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "pr2met0AmCGLQy7wJxzi2BBmQ3ZduHgFK37bg2JyaFu3Pfy53gbNPtFH/7R14HGz",
  server: true

# In test we don't send emails.
config :test, Test.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime