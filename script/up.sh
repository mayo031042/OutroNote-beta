#!/bin/bash

[ $(pwd) != "$HOME/Desktop/shumi/OutroNote-beta" ] && echo no && exit 1

open "http://localhost:3000" 

bin/rails server 
