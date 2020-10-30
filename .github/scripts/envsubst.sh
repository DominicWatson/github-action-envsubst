for FILE in $FILES; do
	if [[ -n $PATTERNS ]] ; then
		envsubst "${PATTERNS}" < $FILE > /tmp/envsubst || exit 1
	else
		envsubst < $FILE > /tmp/envsubst || exit 1
	fi

	mv /tmp/envsubst $FILE || exit 1
done