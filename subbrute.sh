domain=$1
while read sub;do 
	if host $sub.$domain &> /dev/null; then
		echo "$sub.$domain";
	fi
done < best-dns-wordlist.txt
