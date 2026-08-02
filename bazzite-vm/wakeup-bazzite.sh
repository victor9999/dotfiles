#!/usr/bin/env bash

[ -f .env ] && { set -o allexport; source .env; set +o allexport; }

[ -z "${PVE_API_TOKEN}" ] && { echo "PVE_API_TOKEN is unset"; exit 1; }
[ -z "${PVE_HOST}" ] && { echo "PVE_HOST is unset"; exit 1; }
[ -z "${PVE_NODE}" ] && { echo "PVE_NODE is unset"; exit 1; }
[ -z "${PVE_VMID}" ] && { echo "PVE_VMID is unset"; exit 1; }

IS_RESUMED=$(timeout 5 curl -k -sS -X POST \
  -H "Authorization: PVEAPIToken=${PVE_API_TOKEN}" \
  -w "%{http_code}" \
  -o /dev/null \
  "https://${PVE_HOST}/api2/json/nodes/${PVE_NODE}/qemu/${PVE_VMID}/status/resume")

[ "$IS_RESUMED" -ge 200 -a "$IS_RESUMED" -lt 300 ] || \
timeout 5 curl -k -sS -X POST \
  -H "Authorization: PVEAPIToken=${PVE_API_TOKEN}" \
  -o /dev/null \
  "https://${PVE_HOST}/api2/json/nodes/${PVE_NODE}/qemu/${PVE_VMID}/status/start"
