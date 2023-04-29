#! /bin/bash
while :; do
	git -C /home/kanikama0601/for_test pull
	git -C /home/kanikama0601/for_test add .
	git -C /home/kanikama0601/for_test commit -m "auto commit"
	git -C /home/kanikama0601/for_test push
	sleep 120
done
