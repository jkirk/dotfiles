#!/bin/sh

SCRIPT=$(readlink -f "$0")
CONFDIR=$(dirname "${SCRIPT}")

for config in "${CONFDIR}"/.* "${CONFDIR}"/.config/*; do
	BASE=${config#"${CONFDIR}/"}
	HOMEBASE=${HOME}/${BASE}
	BACKUP="${HOMEBASE}.$(date --rfc-3339=seconds)"

	if [ "${BASE}" = ".git" ] || [ "${BASE}" = ".config" ] || [ "${BASE}" = "." ] || [ "${BASE}" = ".." ]; then
		continue
	fi

	if [ -e "${HOMEBASE}" ] && [ ! -L "${HOMEBASE}" ]; then
		mv "${HOMEBASE}" "${BACKUP}"
		echo "Backup of ${HOMEBASE} created -> ${BACKUP}"
	fi

	if [ -L "${HOMEBASE}" ]; then
		if [ "$1" = "--force" ]; then
			echo "Recreated: ${config} -> ${HOMEBASE}"
			ln -sf "${config}" "${HOMEBASE}"
		else
			echo "Skipped: ${config} -> ${HOMEBASE}"
		fi
	else
		echo "Created (new): ${config} -> ${HOMEBASE}"
		ln -s "${config}" "${HOMEBASE}"
	fi
	if [ "${BASE}" = ".ssh" ] && [ -d "${BACKUP}" ]; then
		echo "Copy content of ${BACKUP} back to ${HOMEBASE}"
		cp -a "${BACKUP}/." "${HOMEBASE}/."
	fi
done

exit 0

# vim: set noexpandtab:
