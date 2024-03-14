function install() {
   clear
   echo -e "\033[32m[~] Actualizando paquetes..."
   sudo apt update -y && sudo apt upgrade -y
  

   sleep 3
   which nmap > /dev/null 2>&1
   if [ "$?" -eq "0" ]; then
   echo -e "\033[32m\n[~] Nmap ya esta instalado."
   else
   echo -e "\033[31m\n[!] Nmap no esta instalado."
   sleep 2
   echo -e "\033[32m\n[~] Instalando Nmap..."
   sudo apt install nmap -y
   fi
   
}

install
