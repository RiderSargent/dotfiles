function migrate
  if rake db:migrate
    echo "==> Dev migrated"
    if rake db:migrate RAILS_ENV=test
      echo "==> Test migrated"
    end
  end
end
