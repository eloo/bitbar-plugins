#!/bin/bash

# <bitbar.title>Monero BTC price at Kraken</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>
# <bitbar.author>Monero.how</bitbar.author>
# <bitbar.author.github>monerohow</bitbar.author.github>
# <bitbar.desc>Shows the last Monero price (in BTC) on the Kraken exchange</bitbar.desc>
# <bitbar.image>https://raw.githubusercontent.com/monerohow/misc/master/mac-menu-bar-light-and-dark.jpg</bitbar.image>
# <bitbar.abouturl>https://www.monero.how</bitbar.abouturl>
#
# Visit https://www.monero.how for Monero tutorials, paper wallets and the latest Monero news
# 

# Uncomment to disable this plugin
exit 0 

FONT=( 'size=12' )
ICON="iVBORw0KGgoAAAANSUhEUgAAAA0AAAAQCAYAAADNo/U5AAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH4gQXCCIYFdtWAQAAAW9JREFUKM910z9oljEQx/FPLQiCBSfXBLK0bioUXrAg1Nmxg6iLoFgQ6/+hgptQUKTg4CZChdpF0F0QB0tRFFxcIsngoIugk2+ROpgXnj6tt1xy5Hu/u0tCz1KIUojjKcSfo33f9vSBZuuYSCG+z7XsALdBuRa4i2PYwvEU4p0W/6/SDD5giDH8wpcU4uHuubFOWQfxMNcyl0KcxSY2cy1vU4gvcRY/ci3/oAbO4zte4HWuZZBC3MAAp1qC1X55h3AJi7mWQetxGjdwGTO79TSJNWyNptX8BJYxvQ1KIU5htdX9sTfNd7iIlRRi7CodxTdcx1JvxPdxG58w1YUmcS7X8gaPehe9lGt5hVs40oXOY66tn6QQT7SXMIvHLX4S8917GuIBxluiM1jBaTxt0B8s5FrGR0r7cQDruZarWM61XMG9XMsCNrAPe7vlDXMtF/A1hfgMz1OI15pfw+dcy3xT2/ktml9MIf5OId60i/0F4aF+2p2O2LYAAAAASUVORK5CYII="

last=$(curl -s "https://api.kraken.com/0/public/Ticker?pair=EOSEUR" | tr -d '{}"[]' | tr ':,' '\n' | grep -A1 "^c$" | tail -1)
printf "%.*f | $FONT image=%s\n" 2 "$last" "$ICON"
echo "---"

