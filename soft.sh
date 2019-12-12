clear
show_menus() {
	clear
	echo "~~~~~~~~~~~~~"	
	echo " C O S M I K "
	echo "~~~~~~~~~~~~~"
	echo "1. Updates"
	echo "2. Cloning ctf tools from github"
	echo "3. Installing ctf tools"
	echo "4. Exit"
}

read_options(){
	local choice
	read -p "Choose between 1 and 4 : " choice
	case $choice in
		1) apt update && apt -y full-upgrade 
		;;

		2) git clone https://github.com/bannsec/stegoVeritas.git
		git clone https://github.com/StefanoDeVuono/steghide.git
		git clone https://github.com/Paradoxis/StegCracker.git
		git clone https://github.com/Ganapati/RsaCtfTool.git
		git clone https://github.com/DominicBreuker/stego-toolkit.git
		git clone https://github.com/maurosoria/dirsearch.git
		git clone https://github.com/ticarpi/jwt_tool.git
		;;

		3) pip3 install stegoveritas
		stegoveritas_install_deps
		apt-get install steghide -y
		pip3 install pycryptodomex
		;;

		4) exit 0;;
		*) echo -e "${RED}Error...${STD}" && sleep 2
	esac
}

	show_menus
	read_options
done
