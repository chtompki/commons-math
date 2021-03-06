#!/bin/bash -x

export MAVEN_OPTS="-Xmx6g -Xms2g"
{
    mvn -X -B test
} || {
    sudo find / -type f -name 'hs_err*' -print | xargs cat
}