#!/bin/bash

white="\e[1;37m"
cyan="\e[1;36m"
violet="\e[1;35m"
green="\e[1;32m"
yellow="\e[1;33m"
red="\e[1;31m"

function banner () {
    echo -e "$red ----------------------------------------------------------------------------"
    echo -e "$yellow ▐ ▄ • ▌ ▄ ·.  ▄▄▄·  ▄▄▄·    .▄▄ ·  ▄▄·  ▄▄▄·  ▐ ▄  ▐ ▄ ▄▄▄ .▄▄▄  "
    echo -e "$yellow•█▌▐█·██ ▐███▪▐█ ▀█ ▐█ ▄█    ▐█ ▀. ▐█ ▌▪▐█ ▀█ •█▌▐█•█▌▐█▀▄.▀·▀▄ █·"
    echo -e "$yellow▐█▐▐▌▐█ ▌▐▌▐█·▄█▀▀█  ██▀·    ▄▀▀▀█▄██ ▄▄▄█▀▀█ ▐█▐▐▌▐█▐▐▌▐▀▀▪▄▐▀▀▄ "
    echo -e "$red   ██▐█▌██ ██▌▐█▌▐█ ▪▐▌▐█▪·•    ▐█▄▪▐█▐███▌▐█ ▪▐▌██▐█▌██▐█▌▐█▄▄▌▐█•█▌"
    echo -e "$red   ▀▀ █▪▀▀  █▪▀▀▀ ▀  ▀ .▀        ▀▀▀▀ ·▀▀▀  ▀  ▀ ▀▀ █▪▀▀ █▪ ▀▀▀ .▀  ▀"
    echo -e "$red ©2024 By ZombieGeek0 (https://www.github.com/ZombieGeek0)"
    echo -e "$white ----------------------------------------------------------------------------"
}

function menu () {
    echo -e "$red [~] Ingresa la IP a la que realizar el escaneo: "
    echo -e -n "--->"
    read ip
    echo -e "$red ----------------------------------------------------------------------------"
    echo -e "$yellow [~] Escaneo estándar: "
    nmap $ip
    echo -e "$red ----------------------------------------------------------------------------"
    echo -e "$yellow [~] Para obtener información del sistema operativo: "
    nmap -A -v $ip
    echo -e "$red ----------------------------------------------------------------------------"
}

banner
menu
