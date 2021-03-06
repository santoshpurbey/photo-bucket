clean:
	rm -f project.sqlite

create_database:
	./manage.py makemigrations --noinput
	./manage.py migrate --noinput
	./manage.py createsuperuser --username=root --email=root@root.com --noinput

make_fixtures:
	./manage.py create_users
	./manage.py create_posts
	./manage.py create_photos

all: clean create_database make_fixtures
