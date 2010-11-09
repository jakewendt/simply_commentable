# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_simply_commentable_session',
  :secret      => '09da3ca54e76bc23a6e230caeff0e35e87bc5afc734c486094d86bb79ac90f904b866b8cf80df719037a0fc3b579595f2e99badcc24b77f55cf34cd096f23e93'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
