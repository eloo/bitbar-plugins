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
#exit 0 

FONT=( 'size=12' )
ICON="iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAEGWlDQ1BrQ0dDb2xvclNwYWNlR2VuZXJpY1JHQgAAOI2NVV1oHFUUPrtzZyMkzlNsNIV0qD8NJQ2TVjShtLp/3d02bpZJNtoi6GT27s6Yyc44M7v9oU9FUHwx6psUxL+3gCAo9Q/bPrQvlQol2tQgKD60+INQ6Ium65k7M5lpurHeZe58853vnnvuuWfvBei5qliWkRQBFpquLRcy4nOHj4g9K5CEh6AXBqFXUR0rXalMAjZPC3e1W99Dwntf2dXd/p+tt0YdFSBxH2Kz5qgLiI8B8KdVy3YBevqRHz/qWh72Yui3MUDEL3q44WPXw3M+fo1pZuQs4tOIBVVTaoiXEI/MxfhGDPsxsNZfoE1q66ro5aJim3XdoLFw72H+n23BaIXzbcOnz5mfPoTvYVz7KzUl5+FRxEuqkp9G/Ajia219thzg25abkRE/BpDc3pqvphHvRFys2weqvp+krbWKIX7nhDbzLOItiM8358pTwdirqpPFnMF2xLc1WvLyOwTAibpbmvHHcvttU57y5+XqNZrLe3lE/Pq8eUj2fXKfOe3pfOjzhJYtB/yll5SDFcSDiH+hRkH25+L+sdxKEAMZahrlSX8ukqMOWy/jXW2m6M9LDBc31B9LFuv6gVKg/0Szi3KAr1kGq1GMjU/aLbnq6/lRxc4XfJ98hTargX++DbMJBSiYMIe9Ck1YAxFkKEAG3xbYaKmDDgYyFK0UGYpfoWYXG+fAPPI6tJnNwb7ClP7IyF+D+bjOtCpkhz6CFrIa/I6sFtNl8auFXGMTP34sNwI/JhkgEtmDz14ySfaRcTIBInmKPE32kxyyE2Tv+thKbEVePDfW/byMM1Kmm0XdObS7oGD/MypMXFPXrCwOtoYjyyn7BV29/MZfsVzpLDdRtuIZnbpXzvlf+ev8MvYr/Gqk4H/kV/G3csdazLuyTMPsbFhzd1UabQbjFvDRmcWJxR3zcfHkVw9GfpbJmeev9F08WW8uDkaslwX6avlWGU6NRKz0g/SHtCy9J30o/ca9zX3Kfc19zn3BXQKRO8ud477hLnAfc1/G9mrzGlrfexZ5GLdn6ZZrrEohI2wVHhZywjbhUWEy8icMCGNCUdiBlq3r+xafL549HQ5jH+an+1y+LlYBifuxAvRN/lVVVOlwlCkdVm9NOL5BE4wkQ2SMlDZU97hX86EilU/lUmkQUztTE6mx1EEPh7OmdqBtAvv8HdWpbrJS6tJj3n0CWdM6busNzRV3S9KTYhqvNiqWmuroiKgYhshMjmhTh9ptWhsF7970j/SbMrsPE1suR5z7DMC+P/Hs+y7ijrQAlhyAgccjbhjPygfeBTjzhNqy28EdkUh8C+DU9+z2v/oyeH791OncxHOs5y2AtTc7nb/f73TWPkD/qwBnjX8BoJ98VQNcC+8AAAE3SURBVDgRY2CgJfjPwMBIkfl/LDj+d3MHAM3BDZhwSSHbHsdpW4pLHU4D/lpw/INp0mUS7oKx0WmsBvw05WhDV4jLKxgGAJ3OxMzMUIluAIiP7C2YPIYBfy05/sIkGZiZGNJSf8O5nVx+v+AcKAPDAJA1MMB85CsDX/8Whr//mMFCzIxMLDA5GI1iACja4BKrzsKYDOUfl8HZ6GEBN+CPGUc8XBWQwSirheCysiHYQFYTp/cdmADcAAYmhgUwQeZj32BMOF3yZT2czcnEqgzjgJPqHzug06HBE/qw7B9QEGEwTCWQZmZkZjD5eO4/EwMjIyPQsyXfNjAy/XdgYAFpDruqtijsYRko8WPVDDLn7/+/DCf59BlXsPNs+w/NJYzfzTiWRD8ui0ayiGjmuudNUGOI1oKpEACYLUquC+KahQAAAABJRU5ErkJggg=="

last=$(curl -s "https://api.kraken.com/0/public/Ticker?pair=BATEUR" | tr -d '{}"[]' | tr ':,' '\n' | grep -A1 "^c$" | tail -1)
printf "%.*f | $FONT image=%s\n" 2 "$last" "$ICON"
echo "---"


