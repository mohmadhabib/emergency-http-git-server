# Emergency HTTP Git Server


this project is a fork of [poppyschmo/emergency-git-server](https://github.com/poppyschmo/emergency-git-server) project but i have implement some other Functionalities and removed others

## Quick Start

First add your user and password to file eg. [data/passwds/user](./data/passwds/user)
or use `user:pass` as your credintials for testing
> if you have your own secret file, please change it on [data/auth.json](./data/auth.json)

if you would like to use some security pass use this [service](https://hostingcanada.org/htpasswd-generator/) to create `SHA1` pass 

```bash
# Clone this Repo
git clone https://github.com/mohmadhabib/emergency-http-git-server

# Change Dir
cd emergency-http-git-server

# Run it
python3 server.py data/repos # OR make run
```


For [post-receive Hook](./data/hooks/post-receive) for Auto Deployment
```bash
# It's Simply will be Triggered After Pushed to server and will check for makefile named as .deploy, if found it will call the default (all) target in it, other than that it will skip any other files

# Project File Structure

emergency-http-git-server

├── data                                                                                                                                                          
│   ├── auth.json                                                                                                                                                 
│   ├── hooks
│   │   └── post-receive
│   ├── passwds
│   │   ├── root
│   │   └── user
│   └── repos
├── makefile
├── README.md
└── server.py # <------- Server Script
```



### Changes
1. REMOVE openssl ($apr1) Password.
2. REMOVE Logfile change name, reset same file every startup.
3. ADD accept Plain USER:PASS auth file
4. ADD simple listing repos via POST Req.
5. ADD Custom Hook for Deployments, using [gnumake](https://www.gnu.org/software/make/)



## Requirements
1. python3
2. git

## TODO:
- [ ] Simplify Auth using only auth.json
- [ ] Add Extra POST Functionality (adduser, deluser, changeprivate)
- [ ] (Not Planned) add simple git frontend
- [ ] (Experment) bundle all files in Single File
