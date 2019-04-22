echo "Getting those 1337 dictionaries 4 u..."
mkdir OtherLists
cd OtherLists
wget https://crackstation.net/files/crackstation.txt.gz
echo "Done...unzipping..."
gunzip crackstation.txt.gz
bunzip2 *.bz2
echo "Cloning SecLists and KaliLists"
cd ../
git clone https://github.com/danielmiessler/SecLists.git
git clone https://github.com/3ndG4me/KaliLists.git
echo "Done...unzipping..."
gunzip KaliLists/rockyou.txt.gz
echo "Building MEGALIST.txt..."
cat /KaliLists/rockyou.txt > megalist.txt
cat /SecLists/Passwords/* >> megalist.txt
cat /SecLists/Passwords/Common-Credentials/* >> megalist.txt
cat /SecLists/Passwords/Permutations/* >> megalist.txt
cat /SecLists/Passwords/dark* >> megalist.txt
cat /SecLists/Passwords/Most-Popular-Letter-Passes.txt >> megalist.txt
cat /SecLists/Passwords/PHP-Magic-Hashes.txt >> megalist.txt
cat /SecLists/Passwords/Cracked-Hashes/milw0rm-dictionary.txt >> megalist.txt
cat /SecLists/Passwords/Honeypot-Captures/* >> megalist.txt
cat /SecLists/Passwords/Keyboard-Combinations.txt >> megalist.txt
rm /SecLists/Passwords/Leaked-Databases/rockyou.txt.tar.gz
rm /SecLists/Passwords/Leaked-Databases/rockyou-withcount.txt.tar.gz
cat /SecLists/Passwords/Leaked-Databases/* >> megalist.txt
cat /SecLists/Passwords/Malware/* >> megalist.txt
cat /SecLists/Passwords/Software/* >> megalist.txt
cat /SecLists/Passwords/WiFi-WPA/* >> megalist.txt
cat /SecLists/Passwords/bt4-password.txt >> megalist.txt
cat /SecLists/Passwords/cirt-default-passwords.txt >> megalist.txt
cat /SecLists/Passwords/clarkson-university-82.txt >> megalist.txt
cat /SecLists/Passwords/openwall.net-all.txt >> megalist.txt
cat /SecLists/Passwords/probable-v2-top* >> megalist.txt
cat /SecLists/Passwords/twitter-banned.txt >> megalist.txt
cat /SecLists/Passwords/unkown-azul.txt >> megalist.txt
cat /KaliLists/sqlmap.txt >> megalist.txt
cat /KaliLists/fasttrack.txt >> megalist.txt
cat /KaliLists/nmap.lst >> megalist.txt
cat /KaliLists/metasploit/* >> megalist.txt
cat /OtherLists/* >> megalist.txt
echo "Done!"
