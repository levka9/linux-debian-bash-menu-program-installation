while true; do
    clear
    echo "===== MAIN MENU ====="
    echo "1. Install chrome"
    echo "2. Install zoom"
    echo "3. Show current directory"
    echo "4. List files"
    echo "5. Exit"
    echo "====================="
    
    read -rp "Choose an option: " choice
    
    case "$choice" in
    1) bash install/install-chrome.sh ;;
    2) bash install/install-zoom.sh ;;
    3) pwd ;;
    4) ls -lah ;;
    5) echo "Goodbye!"; exit 0 ;;
    *) echo "Invalid option." ;;
    esac
    
    read -rp "Press Enter to continue..."
done
