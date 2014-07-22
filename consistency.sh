#!/bin/bash

grep -iPzoR "feedback\s+and\s+submission" sections/ chap*/
if [ $? -eq 0 ]; then
    echo -n  "$(tput setaf 1)"
    echo "replace instances of 'feedback and submission' with 'feedback and assessment'"
    echo -n "$(tput setaf 0)"
fi

grep -iPzoR "large(-|\s+)scale" sections/ chap*/
if [ $? -eq 0 ]; then
    echo -n  "$(tput setaf 1)"
    echo -e "replace instances of 'large-scale' with 'wide-scale'"
    echo -n  "$(tput setaf 0)"
fi

grep -iPzoR "real(\s+)time" sections/ chap*/
if [ $? -eq 0 ]; then
    echo -n  "$(tput setaf 1)"
    echo -e "replace instances of 'real time' with 'real-time'"
    echo -n  "$(tput setaf 0)"
fi

grep -iPzoR "base(\s+)project" sections/ chap*/
if [ $? -eq 0 ]; then
    echo -n  "$(tput setaf 1)"
    echo -e "replace instances of 'base project' with 'base-project'"
    echo -n  "$(tput setaf 0)"
fi

grep -iPR "(\s+)project(s?)([^a-z]|$)" sections/ chap*/
if [ $? -eq 0 ]; then
    echo -n  "$(tput setaf 1)"
    echo -e "replace instances of 'project' with 'assignment'"
    echo -n  "$(tput setaf 0)"
fi

grep -iPR "scratch (-|\s+)program(s)?[^a-z]" sections/ chap*/
if [ $? -eq 0 ]; then
    echo -n  "$(tput setaf 1)"
    echo -e "replace instances of 'scratch program' with '\sprogram{}'"
    echo -n  "$(tput setaf 0)"
fi

grep -iPR "(^|\s+)CS(\s+|$)" sections/ chap*/
if [ $? -eq 0 ]; then
    echo -n  "$(tput setaf 1)"
    echo -e "replace instances of 'Computer Science' with 'computer science'"
    echo -n  "$(tput setaf 0)"
fi
