# README

## The Problem:

whenever you have an e-mail reminder set in one of your calendar entries iCal will launch Apple Mail to send you this reminder. Even-though you might not be using Apple Mail. This is especially annoying if you have never even opened or set-up mail and therefor have no e-mail accounts there. Luckily this behavior is modifiable trough Applescript.

See the accompanied [blog post](http://gidogeek.com/post/6037637963/ical-sparrow) for why I made this.

## How to install:

1. Download the Mail.applescript file
2. Make a back-up of : "/Applications/iCal.app/Contents/Resources/Scripts/Mail.scpt"
3. Open the Mail.applescript file in **"AppleScript Editor"**. It's pre-installed on OSX in: **"/Applications/Utilities/"**
4. Click compile 
![screenshot](http://f.cl.ly/items/2R0h2M3Z3h1J1b0R3C2i/Screen%20shot%202011-05-31%20at%2019.36.20%20.png)
5. Rename the file to **Mail.scpt** and copy it to **"/Applications/iCal.app/Contents/Resources/Scripts/"**. Replace the file which is there.

Note: The Original.applescript is the original applescript file that came with Snow Leopard.

## Credits:

Major love to [@dinh_viet_hoa](http://twitter.com/dinh_viet_hoa) for making Sparrow and of course the Apple Script interface

## Help & Issues:

I realize not everybody who lands on this page might have a Github account. Please feel free to ask me questions about this on [Twitter](http://twitter.com/gidogeek). I'll be more then happy to help you out with any issues you might have. This problem has been bugging me for-ever.