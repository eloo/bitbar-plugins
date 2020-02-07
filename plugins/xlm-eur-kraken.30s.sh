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
ICON="iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAABXElEQVQ4jZ2QMWsUYRCGV4MpTDwh7O2xu/O+880sJ1ikOjC/IAZSBALXXHcQ7C2shQTTpEuXKgEbSy38A+nSBAJBCztLq0tnlLusTS6cl7vb04GvmY/nmXcmiuYsZlwP0I8u/OHUfq1WW5mXfejAUaGhHH0B2JiLdnLXoT0TvgrkawOvCw2liexUwnmePzPwl0H3hz0j398m6EwFEceZ5WwbcFpoKJ36OYqiB61W61Ggnjt1kGUZJrELRh46tT++s5PfXPC90FA6eDJxcgA6Dv3g5OW44O541C9xHD+Zubs0ZNWpN/dSgFdIkqLyeEmSNALwyaG9vwX6sxFFS5UCIw+QJEWapmrQr04dDO+iafq8WgCcWYatAHQtZ1vq0gzCtwb+rkf15TkE+s4FFyqyPdJ+7NDjmaDUpenuT6f9V01fNGAviKxVRpxUBn0TcnT/SyAiLwx4qSKb/8r+AfE0YxZ55PKcAAAAAElFTkSuQmCC"

last=$(curl -s "https://api.kraken.com/0/public/Ticker?pair=XLMEUR" | tr -d '{}"[]' | tr ':,' '\n' | grep -A1 "^c$" | tail -1)
printf "%.*f | $FONT image=%s\n" 2 "$last" "$ICON"
echo "---"

