upload:
	aws s3 sync . s3://corgi.website --exclude '.git/*' --exclude Makefile --exclude LICENSE --exclude '*.md' --exclude '*.markdown' --exclude '*.DS_Store' --acl public-read
	cfcli -d corgi.website purge

server:
	python3 -m http.server

.PHONY: upload server
