function migrate
  if bundle exec rake db:migrate
    echo "==> Dev migrated"
    if bundle exec rake db:migrate RAILS_ENV=test
      echo "==> Test migrated"
    end
  end
end
