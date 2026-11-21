#!/bin/bash
cd "$(dirname "$0")"
echo "🚀 Starting CareConnect Demo Server..."
echo ""
echo "✅ Demo is now running at:"
echo ""
echo "   Local:    http://localhost:8080/index_demo.html"
echo "   Network:  http://$(ipconfig getifaddr en0):8080/index_demo.html"
echo ""
echo "📱 Share the Network URL with your friend (if on same WiFi)"
echo "🛑 Press Ctrl+C to stop the server"
echo ""
python3 -m http.server 8080
