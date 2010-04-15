# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_haml_test_app_session',
  :secret      => 'f0a5d311ca334a632090738a9f876ba949eb317a41ae11e57f6b55ff73ac00e89f5f66e218b980b298e11c7b125b86bdc531db06dec0d97aebee219cbe19eb81'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
