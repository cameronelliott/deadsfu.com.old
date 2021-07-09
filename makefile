



all: build deploy


restart:
	ssh root@165.227.51.131 docker restart caddy
	
build:
	./bin/hugo/hugo --gc --minify


deploy:
	ansible-playbook -i ansible-inventory.yml ansible-deploy.yml



