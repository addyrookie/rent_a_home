# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_rent_a_home_session',
  :secret      => 'f7c140950cbd1301b99944e715a14c9920f4086272e7fba507b3a43cdc505e48e6b2d2e4be78ea5b40e0300ba1f86d9c81414b643e353300d2f1256a256993ca'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
