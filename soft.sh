printf "%s\n" "***************USEFULL CTF TOOLS CLONING***************"

git clone https://github.com/bannsec/stegoVeritas.git
git clone https://github.com/StefanoDeVuono/steghide.git
git clone https://github.com/Paradoxis/StegCracker.git
git clone https://github.com/Ganapati/RsaCtfTool.git
git clone https://github.com/DominicBreuker/stego-toolkit.git
git clone https://github.com/maurosoria/dirsearch.git
git clone https://github.com/ticarpi/jwt_tool.git

printf "%s\n" "***************INSTALLING STEGOVERITAS***************"
pip3 install stegoveritas
stegoveritas_install_deps

printf "%s\n" "***************INSTALLING STEGHIDE & STEGCRACKER***************"
apt-get install steghide -y

printf "%s\n" "***************INSTALLING JWT_TOOL***************"
pip3 install pycryptodomex
