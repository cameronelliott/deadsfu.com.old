

X=root@165.227.51.131

all: deploy


restart:
	ssh ${X} docker restart caddy
	
deploy:
	./bin/hugo/hugo --gc --minify
	ssh ${X} mkdir -p /root/public/3419512222
	rsync public/ ${X}:/root/public/3419512222
	tar czvf - --exclude node_modules . | ssh ${X} "cat > /root/public/deadsfu.com.tgz"




ansible-setup:
	ansible-playbook -i ansible-inventory.yml ansible-deploy.yml



