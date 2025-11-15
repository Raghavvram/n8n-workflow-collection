TARGET_NAME="MyTarget_$(date +%s)"
PASSWD=""
PORT_ID="730ef368-57e2-11e1-a90f-406186ea4fc5"

sudo -u _gvm gvm-cli --gmp-username admin --gmp-password "${PASSWD}" socket --xml "<create_target><name>${TARGET_NAME}</name><hosts>{{ $json.message.text }}</hosts><port_list id='${PORT_ID}'/></create_target>"

---

SCAN_NAME="MyScan_$(date +%s)"
PASSWD=""
CONFIG_ID="daba56c8-73ec-11df-a475-002264764cea"
SCAN_ID="08b69003-5fc2-4037-a479-93b440211c73"

sudo -u _gvm gvm-cli --gmp-username admin --gmp-password "${PASSWD}" socket --xml "<create_task><name>${SCAN_NAME}</name><config id='${CONFIG_ID}'/><target id='{{ $json.target_id }}'/><scanner id='${SCAN_ID}'/></create_task>"

---

PASSWD=""

sudo -u _gvm gvm-cli --gmp-username admin --gmp-password "${PASSWD}" socket --xml "<start_task task_id='{{ $json.task_id }}'/>"

---

PASSWD=""
FORMAT_ID="a3810a62-1f62-11e1-9219-406186ea4fc5"

sudo -u _gvm gvm-cli --gmp-username admin --gmp-password "${PASSWD}" socket --xml "<get_reports report_id='{{ $json.report_id }}' format_id='${FORMAT_ID}'/>"

---
