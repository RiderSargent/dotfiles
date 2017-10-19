function db_reset
  if bundle exec rake db:reset
    echo "==> Dev db reset"
    if bundle exec rake db:reset RAILS_ENV=test
      echo "==> Test db reset"
    end
  end
end
