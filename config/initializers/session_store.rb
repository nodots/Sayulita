# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_Sayulita_session',
  :secret      => '8628ee4c653877a946859ad00b46d6a4b3051ad82f2f7a0155e4b50f3c20ab379dbff544295963dc693659020baabe14214002995c2d78f06eab0731639edbdf'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
