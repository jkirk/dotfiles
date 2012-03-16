#!/bin/bash

SCRIPT=$(readlink -f $0)
CONFDIR=$(dirname ${SCRIPT})

for config in ${CONFDIR}/.[^.]?*; do
	BASE=$(basename ${config})
	HOMEBASE=${HOME}/${BASE}
	BACKUP="${HOMEBASE}.$(date --rfc-3339=seconds)"

	if [ "${BASE}" == ".git" ]; then
		continue
	fi

	if [ -e ${HOMEBASE} ] && [ ! -L ${HOMEBASE} ]; then
		mv ${HOMEBASE} "${BACKUP}"
		echo "Backup of ${HOMEBASE} created -> ${BACKUP}"
	fi

	if [ -L ${HOMEBASE} ]; then
		rm ${HOMEBASE}
		echo "Recreated: ${HOMEBASE}"
	else
		ln -sf ${config} ${HOMEBASE}
		echo "Created (new): ${HOMEBASE}"
	fi
done

exit 0

