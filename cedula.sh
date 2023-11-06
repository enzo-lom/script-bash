#!/bin/bash

function calcularDigito() {
    cedula=$1
    vector=8123476
    total=0
    for (( i = 0; i < ${#cedula}; i++ ))
    do 
        digit=${cedula:i:1}
        total=$(( total + digit*${vector:i:1} ))
        echo $digit
        echo $total
    done
    modulo=$(( total % 10 ))
    echo "El digito verificador es: $modulo"
}

read -p "Ingresa los primeros 7 dígitos de la cédula: " cedula
if [[ ${#cedula} -ne 7 ]];
then
    echo "La cedula ingresada tiene un numero de digitos invalido. Debe ingresar la cedula sin digito verificador (7 digitos)"
else
    calcularDigito $cedula
fi