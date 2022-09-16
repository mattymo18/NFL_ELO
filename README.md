Gambling with ELO
=================

USAGE
-----
You'll need Docker and the ability to run Docker as your current user.

You'll need to build the container:

    docker build . -t gamble_elo

This Docker container is based on rocker/verse. To run rstudio server:

    docker run -v `pwd`:/home/rstudio -p 8787:8787 -e PASSWORD=mypass -t gamble_elo
      
Then connect to the machine on port 8787.

Username: rstudio \
Password: mypass

#### Make
Use Makefile as recipe book for building artifacts found in derived directories. 

##### Example:
In local project directory, to build artifact named Analysis.pdf:

    make Analysis.pdf
    
Use artifacts before colon as make targets. Dependencies are listed after colon.