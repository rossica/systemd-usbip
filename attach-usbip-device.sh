#!/bin/bash -e
BUS_ID=`/usr/sbin/usbip list -p -r ${SERVER} | grep -i "(${USB_IDVENDOR}:${USB_IDPRODUCT})" | cut '-d:' -f1`
[[ -z "$BUS_ID" ]] || /usr/sbin/usbip attach -r ${SERVER} -b $BUS_ID
