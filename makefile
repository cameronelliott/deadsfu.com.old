

# no
# X=root@165.227.51.131
# we dont use vars so cut and paste to shell works better

all: deploy


restart:
	ssh root@165.227.51.131 docker restart caddy
	
deploy:
	./bin/hugo/hugo --gc --minify
	ssh root@165.227.51.131 mkdir -p /root/public
	rsync -ar public/ root@165.227.51.131:/root/public
	tar czvf - --exclude node_modules . | ssh root@165.227.51.131 "cat > /root/public/deadsfu.com.tgz"




ansible-setup:
	ansible-playbook -i ansible-inventory.yml ansible-deploy.yml



