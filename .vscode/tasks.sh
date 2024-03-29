#!/bin/sh

printf '%s\n' "r for release"
printf '%s\n' "d for debug"

read -r input

case "${input}" in
r)
	sh ./gradlew assembleRelease
	;;
d)
	sh ./gradlew assembleDebug
	;;
esac
