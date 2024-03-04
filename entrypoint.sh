#!/bin/bash

socat TCP-LISTEN:8080,reuseaddr,fork EXEC:"java -jar /app/umleditor.jar >/dev/null 2>&1"
