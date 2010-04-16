# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_sticky_widget_session',
  :secret      => 'f7161c5be2a8d4e9049b3056d3f16947670261d9ea106c3a17f030ac89eb19807c67d755773704f21529e2ab86792b6ff2abeceed442ba67f96a4bbc983b5488'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
