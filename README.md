# Basic Golang Webapp
![build status](https://api.travis-ci.com/NeilBotelho/golang-webapp.svg?branch=master)
## The Plan
The plan for this repo is to setup a personal website using go as a backend and server. The website will(hopefully) have the following sections:
1. A Homepage
2. A Projects section
3. A Demo section
4. An About page

(and possibly a blog? this hasn't really been well thought out ;) )

Progress will be updated in [PROGRESS.md](https://github.com/NeilBotelho/golang-webapp/blob/master/PROGRESS.md)


## Deployment
Initially I had planned to deploy the app to Heroku(mainly because its free) from the command line but Heroku doesn't support golang very well. But I found a workaround where if you put a requirements.txt file in the repo you can trick Heroku into thinking it's a python project. Then you just need to get Heroku to run the compiled binaries. 

To orchestrate all this in a non-messy way I setup a Travis-CI pipeline to test the code whenever its pushed, generate the necessary artificats(executables, requirements.txt, Procfile) for Heroku and deploy it to Heroku.

## Development:

### Requirements:
The only real requirement to develop or run this server locally is having golang installed.

The tests that are written in bash and the make file requires linux but if you have windows with go installed you can install it.

### Installation
Linux:
run  ```make``` in the cloned repo

Windows:
1. Clone this repository with 
```git clone https://github.com/NeilBotelho/golang-webapp.git```
2. Run
```go build  main.go```

and run the executable thats generated





