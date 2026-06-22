#!/bin/bash
cd "$(dirname "$0")"
echo "========================================================="
echo "  KL University Student Course Option Reference Portal   "
echo "========================================================="
echo ""
echo "Starting local Python web server on port 8000..."
python3 -m http.server 8000 &
SERVER_PID=$!
sleep 1.5
open "http://localhost:8000/index.html"
echo ""
echo "Server is running. Do NOT close this window."
echo "Press Ctrl+C in this terminal window to stop the server."
echo ""
wait $SERVER_PID
