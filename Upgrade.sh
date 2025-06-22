sudo apt install -f &&
sudo apt update &&
sudo apt upgrade &&
sudo apt full-upgrade &&
echo -e  "\nlist to be upgraded manually\n"  &&
sudo apt list --upgradable -a
echo -e  "\n Starting upgrtade the left over if any\n"  &&
sudo apt-get --with-new-pkgs upgrade $(apt list --upgradable | awk -F'/' '{print $1}' | grep -v Listing) &&
sudo apt autoremove &&
sudo apt clean  &&
sudo apt autoclean && 
sudo snap refresh
