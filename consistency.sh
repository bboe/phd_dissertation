#!/bin/bash

grep -iPzoR "feedback\s+and\s+submission" sections/ chap*/
if [ $? -eq 0 ]; then
    echo -n  "$(tput setaf 1)"
    echo "replace instances of 'feedback and submission' with 'feedback and assessment'"
    echo -n "$(tput setaf 0)"
fi

grep -iPzoR "feedback\s+system" sections/ chap*/
if [ $? -eq 0 ]; then
    echo -n  "$(tput setaf 1)"
    echo "replace instances of 'feedback system' with 'feedback and assessment system'"
    echo -n "$(tput setaf 0)"
fi

grep -iPzoR "submission\s+system" sections/ chap*/
if [ $? -eq 0 ]; then
    echo -n  "$(tput setaf 1)"
    echo "replace instances of 'submission system' with 'feedback and assessment system'"
    echo -n "$(tput setaf 0)"
fi

grep -iPzoR "large(-|\s+)scale" sections/ chap*/
if [ $? -eq 0 ]; then
    echo -n  "$(tput setaf 1)"
    echo -e "replace instances of 'large-scale' with 'wide-scale'"
    echo -n  "$(tput setaf 0)"
fi

grep -iPzoR "wide\s+scale" sections/ chap*/
if [ $? -eq 0 ]; then
    echo -n  "$(tput setaf 1)"
    echo -e "replace instances of 'wide scale' with 'wide-scale'"
    echo -n  "$(tput setaf 0)"
fi

grep -PzoR "Overall\s" sections/ chap*/
if [ $? -eq 0 ]; then
    echo -n  "$(tput setaf 1)"
    echo -e "add comma after 'Overall'"
    echo -n  "$(tput setaf 0)"
fi

grep -PzoR "Finally\s" sections/ chap*/
if [ $? -eq 0 ]; then
    echo -n  "$(tput setaf 1)"
    echo -e "add comma after 'Finally'"
    echo -n  "$(tput setaf 0)"
fi

grep -PzoR "In\s+this\s+\w+\s" sections/ chap*/
if [ $? -eq 0 ]; then
    echo -n  "$(tput setaf 1)"
    echo -e "add comma after 'In this ____'"
    echo -n  "$(tput setaf 0)"
fi


grep -iPzoR "consent\s+giv" sections/ chap*/
if [ $? -eq 0 ]; then
    echo -n  "$(tput setaf 1)"
    echo -e "replace instances of 'consent give' with 'consent-giv'"
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

grep -iPzoR "the(\s+)delay" sections/ chap*/
if [ $? -eq 0 ]; then
    echo -n  "$(tput setaf 1)"
    echo -e "replace instances of 'delay' with 'feedback delay'"
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
    echo -e "replace instances of 'CS' with 'computer science'"
    echo -n  "$(tput setaf 0)"
fi

grep -iPR "[^{](absolute|relative)(\s+|$)" sections/ chap*/
if [ $? -eq 0 ]; then
    echo -n  "$(tput setaf 1)"
    echo -e "replace relative and absolute with \\\\rel{} and \\\\abs{}"
    echo -n  "$(tput setaf 0)"
fi

grep -iPR "\`\`" sections/ chap*/sections/
if [ $? -eq 0 ]; then
    echo -n  "$(tput setaf 1)"
    echo -e "minimize quote usage"
    echo -n  "$(tput setaf 0)"
fi

grep -PR "[^&](\s+|^)\d{1,2}[.,;]?(\s+|$)" sections/ chap*/sections/
if [ $? -eq 0 ]; then
    echo -n  "$(tput setaf 1)"
    echo -e "Spell out one or two-digit numbers."
    echo -n  "$(tput setaf 0)"
fi
