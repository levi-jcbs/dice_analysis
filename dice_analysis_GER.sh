#!/bin/bash

#
#   ( GERMAN RELEASE 1.0.0 ) 
#


#                          GNU GENERAL PUBLIC LICENSE
#                           Version 3, 29 June 2007
#
#   [EN]
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <https://www.gnu.org/licenses/>.
#
#
#   [DE]
#
#    Dieses Programm ist Freie Software: Sie können es unter den Bedingungen
#    der GNU General Public License, wie von der Free Software Foundation,
#    Version 3 der Lizenz oder (nach Ihrer Wahl) jeder neueren
#    veröffentlichten Version, weiter verteilen und/oder modifizieren.
#
#    Dieses Programm wird in der Hoffnung bereitgestellt, dass es nützlich sein wird, jedoch
#    OHNE JEDE GEWÄHR,; sogar ohne die implizite
#    Gewähr der MARKTFÄHIGKEIT oder EIGNUNG FÜR EINEN BESTIMMTEN ZWECK.
#    Siehe die GNU General Public License für weitere Einzelheiten.
#
#    Sie sollten eine Kopie der GNU General Public License zusammen mit diesem
#    Programm erhalten haben. Wenn nicht, siehe <https://www.gnu.org/licenses/>.
#
#   
#   =================================================================================
#                The original source code was programmed by Levi Jacobs.
#      - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#                   See https://github.com/jcobs-engine/dice_analysis
#   =================================================================================
#




tput civis

ex='exit'

function klaro() {
    clear
    tput cup 0 0
    echo -e "\033[0;31m+------------------------------------------------------------------------------+"
    tput cup 23 0
    echo -e "\033[0;31m+------------------------------------------------------------------------------+"
    
    o=1
    while [ $o -lt 23 ]; do
	tput cup $o 0
	echo -e "\033[0;31m|"
	tput cup $o 79
	echo -e "\033[0;31m|"
	o=$(( $o + 1 ))
    done
    
}

klaro

tput cup 3 0

echo -e "
\033[0;31m|                     \033[0;1;44;37m    GNU GENERAL PUBLIC LICENSE      
\033[0;31m|                     \033[0;0;41;39m     Version: 3, 29 June 2007       
\033[0;31m|                     \033[0;0;41;37m                                    
\033[0;31m|                     \033[0;0;41;37m This program has the GNU General   
\033[0;31m|                     \033[0;0;41;37m Public License v3.                 
\033[0;31m|                     \033[0;0;41;37m You can redistribute it and/or     
\033[0;31m|                     \033[0;0;41;37m modify it under the terms of the   
\033[0;31m|                     \033[0;0;41;37m GNU General Public License as      
\033[0;31m|                     \033[0;0;41;37m published by the Free Software     
\033[0;31m|                     \033[0;0;41;37m Foundation, either version 3 of    
\033[0;31m|                     \033[0;0;41;37m the License, or (at your option)   
\033[0;31m|                     \033[0;0;41;37m any later version.                 
\033[0;31m|                     \033[0;0;41;37m                                    
\033[0;31m|                     \033[0;1;41;32m  <https://www.gnu.org/licenses/>   
\033[0;31m|                     \033[0;0;41;37m                                    
\033[0;31m|                     \033[0;0;41;37m                              \033[0;37;44m[\033[1;33;44mOKAY\033[0;37;44m]
\033[0;31m
"

read -sn1 hallo

clear

tput cup 3 0

echo  -e " \033[1;32m
       			 _   _                _            
       			| | ( )              | |           
       			| | |/  ___    ___   | |__    ___  
       		    _   | |    / __|  / _ \  | '_ \  / __| 
       		   | |__| |   | (__  | (_) | | |_) | \__ \ 
       		    \____/     \___|  \___/  |_.__/  |___/  

       	       ===============================================
       		  ______                   _                 
       		 |  ____|                 (_)                
       		 | |__     _ __     __ _   _   _ __     ___  
       		 |  __|   | '_ \   / _  | | | | '_ \   / _ \ 
       		 | |____  | | | | | (_| | | | | | | | |  __/ 
       		 |______| |_| |_|  \__, | |_| |_| |_|  \___| 
       				    __/ |                   
       				   |___/                    

	"

sleep 1.2

tput cup 0 0
echo -e "\033[0;31m+------------------------------------------------------------------------------+"
tput cup 23 0
echo -e "\033[0;31m+------------------------------------------------------------------------------+"

o=1
while [ $o -lt 23 ]; do
    tput cup $o 0
    echo -e "\033[0;31m|"
    tput cup $o 79
    echo -e "\033[0;31m|"
    o=$(( $o + 1 ))
done

sleep 0.3

while [ 0 ]; do
    klaro
    
    tput cup 1 38
    tput civis
    echo -en "\033[0;1;31m"
    read versuche
    
    if [ "$versuche" -gt 399 ] && [ "$versuche" -lt 10000 ]; then
	
	zahler=$versuche
	versuche=$(( $versuche * 1000 ))

	
	echo -e "\033[0;0m"
	tput cup 5 0
	i=0
	
	a2=0
	a3=0
	a4=0
	a5=0
	a6=0
	a7=0
	a8=0
	a9=0
	a10=0
	a11=0
	a12=0
	
	tp=1
	while [ $i -lt $zahler ]; do
	    r1=$(( ( $RANDOM % 6 ) + 1 ))
	    r2=$(( ( $RANDOM % 6 ) + 1 ))
	    z=$(( $r1 + $r2 ))
	    i=$(( $i + 1 ))
	    
	    if [ $z -eq 2 ]; then
		a2=$(( $a2 + 1 ))
	    fi
	    if [ $z -eq 3 ]; then
		a3=$(( $a3 + 1 ))
	    fi
	    if [ $z -eq 4 ]; then
		a4=$(( $a4 + 1 ))
	    fi
	    if [ $z -eq 5 ]; then
		a5=$(( $a5 + 1 ))
	    fi
	    if [ $z -eq 6 ]; then
		a6=$(( $a6 + 1 ))
	    fi
	    if [ $z -eq 7 ]; then
		a7=$(( $a7 + 1 ))
	    fi
	    if [ $z -eq 8 ]; then
		a8=$(( $a8 + 1 ))
	    fi
	    if [ $z -eq 9 ]; then
		a9=$(( $a9 + 1 ))
	    fi
	    if [ $z -eq 10 ]; then
		a10=$(( $a10 + 1 ))
	    fi
	    if [ $z -eq 11 ]; then
		a11=$(( $a11 + 1 ))
	    fi
	    if [ $z -eq 12 ]; then
		a12=$(( $a12 + 1 ))
	    fi
	    
	    
	    stellen=4
	    ic=$(printf "%.${stellen}i\n" $i)
	    
	    stellen=2
	    zc=$(printf "%.${stellen}i\n" $z)
	    
	    
	    tput cup $tp 1
	    echo -e "\033[34m$ic                                                                        \033[1;32m$zc\033[0;0m"
	    
	    
	    if [ $tp -eq 22 ]; then
		tput cup 1 1
		echo -e "\033[42m                                                                              \033[0;0m"
	    else
		tput cup $(( $tp + 1 )) 1
		echo -e "\033[42m                                                                              \033[0;0m"
	    fi
	    
	    
	    tp=$(( $tp + 1 ))
	    
	    if [ $tp -eq 23 ]; then
		tp=1
	    fi
	    
	    stoppi=$(( ( ( $i * 1000 ) / ( $versuche / 78 ) ) + 1 ))
	    
	    r=1
	    echo -e "\033[0;41m"
	    while [ $r -lt 79 ]; do
		if [ $r -eq $stoppi ]; then
		    echo -e "\033[0;31m"
		fi
		
		tput cup 23 $r
		echo "-"
		r=$(( $r + 1 ))
	    done
	    echo -e "\033[0m"
	    
	    
	done
	
	while [ $tp -lt 23 ] && [ $tp -ne 1 ]; do
	    tput cup $tp 1
	    echo -e "\033[40m                                                                              \033[0;0m"
	    tp=$(( $tp + 1 ))
	done
	if  [ $tp -eq 1 ]; then
	    tput cup 1 1
	    echo -e "\033[40m                                                                              \033[0;0m"
	fi
	
	
	read -sn1 hallo
	
	klaro
	
	d1=$(( $a2 - $a12 ))
	d2=$(( $a3 - $a11 ))
	d3=$(( $a4 - $a10 ))
	d4=$(( $a5 - $a9 ))
	d5=$(( $a6 - $a8 ))
	
	d1=$( echo ${d1//'-'/''} )
	d2=$( echo ${d2//'-'/''} )
	d3=$( echo ${d3//'-'/''} )
	d4=$( echo ${d4//'-'/''} )
	d5=$( echo ${d5//'-'/''} )
	
	du=$(( ( $d1 + $d2 + $d3 + $d4 + $d5 ) / 5 ))
	da=$(( $d1 + $d2 + $d3 + $d4 + $d5 ))
	duc=$du
	du=$(( $da / ( $zahler / 100 ) ))
	duv=$(( 100 - $du ))
	
	stellen=4
	
	d1=$(printf "%.${stellen}i\n" $d1)
	d2=$(printf "%.${stellen}i\n" $d2)
	d3=$(printf "%.${stellen}i\n" $d3)
	d4=$(printf "%.${stellen}i\n" $d4)
	d5=$(printf "%.${stellen}i\n" $d5)
	
	
	ac2=$a2
	ac3=$a3
	ac4=$a4
	ac5=$a5
	ac6=$a6
	ac7=$a7
	ac8=$a8
	ac9=$a9
	ac10=$a10
	ac11=$a11
	ac12=$a12
	
	
	stellen=4
	
	a2=$(printf "%.${stellen}i\n" $a2)
	a3=$(printf "%.${stellen}i\n" $a3)
	a4=$(printf "%.${stellen}i\n" $a4)
	a5=$(printf "%.${stellen}i\n" $a5)
	a6=$(printf "%.${stellen}i\n" $a6)
	a7=$(printf "%.${stellen}i\n" $a7)
	a8=$(printf "%.${stellen}i\n" $a8)
	a9=$(printf "%.${stellen}i\n" $a9)
	a10=$(printf "%.${stellen}i\n" $a10)
	a11=$(printf "%.${stellen}i\n" $a11)
	a12=$(printf "%.${stellen}i\n" $a12)
	
	duc=$(printf "%.${stellen}i\n" $duc)
	
	
	tput cup 1 1
	echo -e "\033[0;4;36m02                                                                        \033[1;4;32m$a2"
	tput cup 2 1
	echo -e "\033[0;4;36m03                                                                        \033[1;4;32m$a3"
	tput cup 3 1
	echo -e "\033[0;4;36m04                                                                        \033[1;4;32m$a4"
	tput cup 4 1
	echo -e "\033[0;4;36m05                                                                        \033[1;4;32m$a5"
	tput cup 5 1
	echo -e "\033[0;4;36m06                                                                        \033[1;4;32m$a6"
	tput cup 6 1
	echo -e "\033[0;4;36m07                                                                        \033[1;4;32m$a7"
	tput cup 7 1
	echo -e "\033[0;4;36m08                                                                        \033[1;4;32m$a8"
	tput cup 8 1
	echo -e "\033[0;4;36m09                                                                        \033[1;4;32m$a9"
	tput cup 9 1
	echo -e "\033[0;4;36m10                                                                        \033[1;4;32m$a10"
	tput cup 10 1
	echo -e "\033[0;4;36m11                                                                        \033[1;4;32m$a11"
	tput cup 11 1
	echo -e "\033[0;4;36m12                                                                        \033[1;4;32m$a12"
	read -sn1 hallo
	
	tput cup 13 1
	echo -e "\033[0;4;36m$a2                                \033[1;4;34m$d1\033[0;4;36m                                  $a12"
	tput cup 14 1
	echo -e "\033[0;4;36m$a3                                \033[1;4;34m$d2\033[0;4;36m                                  $a11"
	tput cup 15 1
	echo -e "\033[0;4;36m$a4                                \033[1;4;34m$d3\033[0;4;36m                                  $a10"
	tput cup 16 1
	echo -e "\033[0;4;36m$a5                                \033[1;4;34m$d4\033[0;4;36m                                  $a9"
	tput cup 17 1
	echo -e "\033[0;4;36m$a6                                \033[1;4;34m$d5\033[0;4;36m                                  $a8"
	tput cup 18 1
	echo -e "\033[0;4;36m$a7                                \033[1;4;34m0000\033[0;4;36m                                  $a7"
	tput cup 20 48
	echo -e "\033[0;0;37mDifferenzdurchschnitt (Ø): \033[0;1;35m$duc"    
	read -sn1 hallo
	
	tput cup 20 1
	echo -e "\033[0;0;37mTrefferquote:   \033[0;1;32m$duv%"
	tput cup 22 1
	echo -e "\033[0;0;37mFehlerquote:    \033[0;1;31m$du%"
	
	read -sn1 hallo
	
	klaro
	
	versuche=$(( $versuche / 4 ))
	
	
	b=$(( $versuche / 20 ))
	d=1
	c=$versuche
	while [ $c -gt 999 ]; do
	    tput cup $d 1
	    cp=$(( $c / 1000 ))
	    stellen=4
	    cc=$(printf "%.${stellen}i\n" $cp)
	    echo -e "\033[0;0;36m$cc"
	    sleep 0.03
	    c=$(( $c - $b ))
	    d=$(( $d + 1 ))
	done
	
	
	tput cup $d 1
	echo -e "\033[0;0;36m0000"
	d=$(( $d + 1 ))
	b=2
	c=11
	while [ $b -ne 13 ]; do
	    tput cup $d $c
	    echo -e "\033[0;0;36m$b"
	    c=$(( $c + 6 ))
	    b=$(( $b + 1 ))
	    sleep 0.03
	done
	d=$(( $d - 1 ))
	
	sleep 0.5
	
	tput cup $d 6
	echo -e "\033[0;1;31mX"
	
	sleep 0.2
	
	ac2=$(( $ac2 * 1000 ))
	ac3=$(( $ac3 * 1000 ))
	ac4=$(( $ac4 * 1000 ))
	ac5=$(( $ac5 * 1000 ))
	ac6=$(( $ac6 * 1000 ))
	ac7=$(( $ac7 * 1000 ))
	ac8=$(( $ac8 * 1000 ))
	ac9=$(( $ac9 * 1000 ))
	ac10=$(( $ac10 * 1000 ))
	ac11=$(( $ac11 * 1000 ))
	ac12=$(( $ac12 * 1000 ))
	
	
	
	e=11
	
	ab2=$(( 20 - ( $ac2 / ( $versuche / 20 ) ) + 1 ))
	tput cup $ab2 $e
	echo -e "\033[0;1;31mX"
	abc2=$ab2
	abc2=$(( $abc2 + 2 ))
	
	e=$(( $e + 6 ))
	
	sleep 0.2
	
	ab3=$(( 20 - ( $ac3 / ( $versuche / 20 ) ) + 1 ))
	tput cup $ab3 $e
	echo -e "\033[0;1;31mX"
	abc3=$ab3
	abc3=$(( $abc3 + 2 ))
	
	e=$(( $e + 6 ))
	
	sleep 0.2
	
	ab4=$(( 20 - ( $ac4 / ( $versuche / 20 ) ) + 1 ))
	tput cup $ab4 $e
	echo -e "\033[0;1;31mX"
	abc4=$ab4
	abc4=$(( $abc4 + 2 ))
	
	e=$(( $e + 6 ))
	
	sleep 0.2
	
	ab5=$(( 20 - ( $ac5 / ( $versuche / 20 ) ) + 1 ))
	tput cup $ab5 $e
	echo -e "\033[0;1;31mX"
	abc5=$ab5
	abc5=$(( $abc5 + 2 ))
	
	e=$(( $e + 6 ))
	
	sleep 0.2
	
	ab6=$(( 20 - ( $ac6 / ( $versuche / 20 ) ) + 1 ))
	tput cup $ab6 $e
	echo -e "\033[0;1;31mX"
	abc6=$ab6
	abc6=$(( $abc6 + 2 ))
	
	e=$(( $e + 6 ))
	
	sleep 0.2
	
	ab7=$(( 20 - ( $ac7 / ( $versuche / 20 ) ) + 1 ))
	tput cup $ab7 $e
	echo -e "\033[0;1;31mX"
	abc7=$ab7
	abc7=$(( $abc7 + 2 ))
	
	e=$(( $e + 6 ))
	
	sleep 0.2
	
	ab8=$(( 20 - ( $ac8 / ( $versuche / 20 ) ) + 1 ))
	tput cup $ab8 $e
	echo -e "\033[0;1;31mX"
	abc8=$ab8
	abc8=$(( $abc8 + 2 ))
	
	e=$(( $e + 6 ))
	
	sleep 0.2
	
	ab9=$(( 20 - ( $ac9 / ( $versuche / 20 ) ) + 1 ))
	tput cup $ab9 $e
	echo -e "\033[0;1;31mX"
	abc9=$ab9
	abc9=$(( $abc9 + 2 ))
	
	e=$(( $e + 6 ))
	
	sleep 0.2
	
	ab10=$(( 20 - ( $ac10 / ( $versuche / 20 ) ) + 1 ))
	tput cup $ab10 $e
	echo -e "\033[0;1;31mX"
	abc10=$ab10
	abc10=$(( $abc10 + 2 ))
	
	e=$(( $e + 6 ))
	
	sleep 0.2
	
	ab11=$(( 20 - ( $ac11 / ( $versuche / 20 ) ) + 1 ))
	tput cup $ab11 $e
	echo -e "\033[0;1;31mX"
	abc11=$ab11
	abc11=$(( $abc11 + 2 ))
	
	e=$(( $e + 6 ))
	
	sleep 0.2
	
	ab12=$(( 20 - ( $ac12 / ( $versuche / 20 ) ) + 1 ))
	tput cup $ab12 $e
	echo -e "\033[0;1;31mX"
	abc12=$ab12
	abc12=$(( $abc12 + 2 ))
	
	e=$(( $e + 6 ))
	
	sleep 0.2
	
	tput cup 21 $e
	echo -e "\033[0;1;31mX"
	sleep 1
	f=0
	while [ $f -lt 21 ]; do 
	    
	    e=11
	    h=0
	    
	    while [ $abc2 -eq $f ]; do
		tput cup $abc2 $e
		echo -e "\033[0;1;37m|"
		abc2=$(( $abc2 + 1 ))
		h=2
	    done
	    
	    e=$(( $e + 6 ))
	    
	    while [ $abc3 -eq $f ]; do
		tput cup $abc3 $e
		echo -e "\033[0;1;37m|"
		abc3=$(( $abc3 + 1 ))
		h=2
	    done
	    
	    e=$(( $e + 6 ))
	    
	    while [ $abc4 -eq $f ]; do
		tput cup $abc4 $e
		echo -e "\033[0;1;37m|"
		abc4=$(( $abc4 + 1 ))
		h=2
	    done
	    
	    e=$(( $e + 6 ))
	    
	    while [ $abc5 -eq $f ]; do
		tput cup $abc5 $e
		echo -e "\033[0;1;37m|"
		abc5=$(( $abc5 + 1 ))
		h=2
	    done
	    
	    e=$(( $e + 6 ))
	    
	    while [ $abc6 -eq $f ]; do
		tput cup $abc6 $e
		echo -e "\033[0;1;37m|"
		abc6=$(( $abc6 + 1 ))
		h=2
	    done
	    
	    e=$(( $e + 6 ))
	    
	    while [ $abc7 -eq $f ]; do
		tput cup $abc7 $e
		echo -e "\033[0;1;37m|"
		abc7=$(( $abc7 + 1 ))
		h=2
	    done
	    
	    e=$(( $e + 6 ))
	    
	    while [ $abc8 -eq $f ]; do
		tput cup $abc8 $e
		echo -e "\033[0;1;37m|"
		abc8=$(( $abc8 + 1 ))
		h=2
	    done
	    
	    e=$(( $e + 6 ))
	    
	    while [ $abc9 -eq $f ]; do
		tput cup $abc9 $e
		echo -e "\033[0;1;37m|"
		abc9=$(( $abc9 + 1 ))
		h=2
	    done
	    
	    e=$(( $e + 6 ))
	    
	    while [ $abc10 -eq $f ]; do
		tput cup $abc10 $e
		echo -e "\033[0;1;37m|"
		abc10=$(( $abc10 + 1 ))
		h=2
	    done
	    
	    e=$(( $e + 6 ))
	    
	    while [ $abc11 -eq $f ]; do
		tput cup $abc11 $e
		echo -e "\033[0;1;37m|"
		abc11=$(( $abc11 + 1 ))
		h=2
	    done
	    
	    e=$(( $e + 6 ))
	    
	    while [ $abc12 -eq $f ]; do
		tput cup $abc12 $e
		echo -e "\033[0;1;37m|"
		abc12=$(( $abc12 + 1 ))
		h=2
	    done
	    
	    f=$(( $f + 1 ))
	    
	    if [ $h -ne 0 ]; then
		sleep 0.05
	    fi
	    
	done
	
	
	
	read -sn1 hallo
	
    elif [ "$versuche" != "$ex" ]; then
	klaro
	tput cup 10 8
	echo -e "\033[0;1;31mEs muss mindestens 400 und höchstens 9999 mal gewürfelt werden!\033[0m"
	read -sn1 hallo
    fi
    
    if [ "$versuche" = "$ex" ]; then
	klaro
	sleep 0.2
	tput cup 3 0
	echo  -e " \033[1;38m
       	      		 _   _                _            
       			| | ( )              | |           
       			| | |/  ___    ___   | |__    ___  
       		    _   | |    / __|  / _ \  | '_ \  / __| 
       		   | |__| |   | (__  | (_) | | |_) | \__ \ 
       		    \____/     \___|  \___/  |_.__/  |___/  

       	       ===============================================
       		  ______                   _                 
       		 |  ____|                 (_)                
       		 | |__     _ __     __ _   _   _ __     ___  
       		 |  __|   | '_ \   / _  | | | | '_ \   / _ \ 
       		 | |____  | | | | | (_| | | | | | | | |  __/ 
       		 |______| |_| |_|  \__, | |_| |_| |_|  \___| 
       				    __/ |                   
       				   |___/                    

	"

	tput cup 0 0
	echo -e "\033[0;31m+------------------------------------------------------------------------------+"
	tput cup 23 0
	echo -e "\033[0;31m+------------------------------------------------------------------------------+"
	
	o=1
	while [ $o -lt 23 ]; do
	    tput cup $o 0
	    echo -e "\033[0;31m|"
	    tput cup $o 79
	    echo -e "\033[0;31m|"
	    o=$(( $o + 1 ))
	done
	
	sleep 0.5
	
	tput cup 0 0
	echo -e "\033[0;31m                                                                                "
	tput cup 23 0
	echo -e "\033[0;31m                                                                                "
	
	o=1
	while [ $o -lt 23 ]; do
	    tput cup $o 0
	    echo -e "\033[0;31m "
	    tput cup $o 79
	    echo -e "\033[0;31m "
	    o=$(( $o + 1 ))
	done
	
	sleep 1
	tput cnorm
	exit
	
    fi
    
    
done

