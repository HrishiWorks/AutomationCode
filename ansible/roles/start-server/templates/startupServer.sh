#!/bin/bash
export JAVA_OPTIONS="-Xmx$1"

echo "Starting TDI Server..."
(( nohup /opt/IBM/TDI/V7.1.1/ibmdisrv -s /var/TDI711/{{ tdi_inst_name }}/server1/solutionDirectory -i -d 1>/tmp/tdi_start.log 2>&1 ) &)
echo "Server started, please check log for status"