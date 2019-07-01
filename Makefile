postgres:
	docker run -d --name pg -p 5432:5432 -v `pwd`/pgdata:/var/lib/postgresql/data postgres:11-alpine

database:
	bundle exec rails db:create
	bundle exec rails db:migration

stop:
	docker stop pg

clean:
	docker rm pg
	rm -rf pgdata
