# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_nsd_session',
  :secret      => 'b9dc8ac766a2d853048535a96da829faa16a3d68fc94f6e53bc97fffbd7993993552c56775b3a0671c6714c6439818eae366237f1fb86df73e7c72337b1a6a8e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
