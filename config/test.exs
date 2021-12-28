import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :phx_tailwind_demo, TailwindDemoWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "qYjOoHOACg58bXVSyabydaGCUCMaJq+7nV5eC9WorL/SDtmPm43ap7Ttu+RipyRh",
  server: false

# In test we don't send emails.
config :phx_tailwind_demo, TailwindDemo.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
