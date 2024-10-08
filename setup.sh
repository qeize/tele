#!/bin/bash

total_modules=5
installed_modules=0

# Function to install a module and update the progress
install_module() {
    module_name="$1"
    echo -e "\e[32mInstalling $module_name...\e[0m"
    pip install $module_name > /dev/null
    installed_modules=$((installed_modules + 1))
    percentage=$((installed_modules * 100 / total_modules))
    echo -e "Progress: $percentage% Complete"
}

# Install telepot
install_module "telepot"

# Install requests
install_module "requests"

# Install pytz
install_module "pytz"

# Install ipaddress
install_module "ipaddress"

# Install urllib3
install_module "urllib3"

# More installation steps here...

# Final step
echo -e "\e[32mInstallation complete. Starting the bot...\e[0m"
python3 bot.py
