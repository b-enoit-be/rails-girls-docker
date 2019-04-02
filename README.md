### How to

1. Build the application

```
docker-compose run web rails new . --force --no-deps --database=postgresql
```

2. Rebuild the applciation (redo this each time you change Gemfile dependencies)

```
docker-compose build
```

3. Connect to the postgress database container; in the extising ```default``` node of the file ```src/config/database.yml```, add

```
  host: database
  username: postgres
  password:
```

4. Create the database

```
docker-compose run web rake db:create
```

5. Run the application

```
docker-compose up -d
```

6. You should now be able to browse your rails application  
  a. if you are on Chrome: [http://rails-girls.localhost/](http://rails-girls.localhost/)  
  b. if you are on another browser: [http://localhost/](http://localhost/)
