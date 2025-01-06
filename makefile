export GITSRV_PREFIX=_
export _HOST=0.0.0.0
export _PORT=8000
export _LOGFILE=../log
export _DEBUG=false
export _ALLOW_CREATION=true
export _USE_NAMESPACES=true
export _AUTHFILE=../auth.json
#export _CERTFILE=./data/cert/cert.pem
#export _KEYFILE=./data/cert/cert.key
#export _DHPARAMS=./data/cert/cert.dh
run:
	@python3 server.py ./data/repos	
clean:
	@rm -rf ./data/repos/* && echo "" > ./data/log
create:
	@curl -s -u user:pass --data init=1 http://localhost:8000/user/test.git
create2:
	@curl -s -u user2:pass2 --data init=1 http://localhost:8000/user2/test.git
create-root:
	@curl -s --data init=1 http://localhost:8000/test.git
clone:
	@git clone http://localhost:8000/user/test.git
clone2:
	@git clone http://localhost:8000/test.git
list:
	@curl -v -u user:pass --data list=1 http://localhost:8000/user/
list2:
	@curl -v -u user2:pass2 --data list=1 http://localhost:8000/user2/

