



all: ddns5-linux-amd64 deploy




# ddns5: main.go git-status makefile
#     MY_ID=$(git rev-list -1 HEAD); \
# 	DD=$(date -u +"%Y%m%d%H%M%S"); \
# 	go build -ldflags "-X main.GitCommit=$$MY_ID -X main.BuildDateTime=$$DD" -o ddns5 main.go

ddns5-linux-amd64: main.go makefile
	@status=$$(git status --porcelain); \
	if [ ! -z "$${status}" ]; \
	then \
		echo "Error - working directory is dirty. Commit those changes!"; \
		exit 1; \
	fi
	#GOOS=linux GOARCH=amd64 go build -o ddns5 main.go
	# will create ddns5-linux-amd64
	/Users/c/go/bin/xgo --targets=linux/amd64 -out ddns5 .


deploy: ddns5-linux-amd64
	ansible-playbook -i ansible-inventory.yml ansible-deploy.yml



