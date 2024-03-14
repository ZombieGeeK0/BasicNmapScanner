#!/bin/bash

white="\e[1;37m"
cyan="\e[1;36m"
violet="\e[1;35m"
green="\e[1;32m"
yellow="\e[1;33m"
red="\e[1;31m"

function banner () {
    sudo clear
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
    sudo nmap $ip
    echo -e "$red ----------------------------------------------------------------------------"
    echo -e "$yellow [~] Para obtener información del sistema operativo: "
    sudo nmap -A -v $ip
    echo -e "$red ----------------------------------------------------------------------------"
    echo -e "$yellow [~] Script auth: "
    sudo nmap -f -sS -sV -Pn --script auth $ip
    echo -e "$red ----------------------------------------------------------------------------"
    echo -e "$yellow [~] Script default: "
    sudo nmap -f -sS -sV -Pn --script default $ip
    echo -e "$red ----------------------------------------------------------------------------"
    echo -e "$yellow [~] Script safe: "
    sudo nmap -f -sS -sV -Pn --script safe $ip
    echo -e "$red ----------------------------------------------------------------------------"
    echo -e "$yellow [~] Script vuln: "
    sudo nmap -f -sS -sV -Pn --script vuln $ip
    echo -e "$red ----------------------------------------------------------------------------"
    echo -e "$yellow [~] Script all: "
    sudo nmap -f -sS -sV -Pn --script all $ip
    echo -e "$red ----------------------------------------------------------------------------"
}

banner
menu
