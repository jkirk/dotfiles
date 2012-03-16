#!/bin/bash

SCRIPT=$(readlink -f $0)
CONFDIR=$(dirname ${SCRIPT})

for config in ${CONFDIR}/.[^.]?*; do
	BASE=$(basename ${config})
	HOMEBASE=${HOME}/${BASE}
	BACKUP="${HOMEBASE}.$(date --rfc-3339=seconds)"
	if [ -e ${HOMEBASE} ] && [ ! -L ${HOMEBASE} ]; then
		mv ${HOMEBASE} "${BACKUP}"
		echo "Backup of ${HOMEBASE} created -> ${BACKUP}"
	fi
	rm ${HOMEBASE}
	ln -sf ${config} ${HOMEBASE}
	echo Created: ${HOMEBASE}
done

exit 0

