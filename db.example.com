; db file example.com

$TTL	604800
@	IN	SOA	example.com. root.example.com. (
			      2		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
@	IN	NS	ns.example.com.
@	IN	A	10.0.1.1
@	IN	AAAA	::1
ns	IN	A	10.0.1.1
	IN	MX 10	mail.example.com.
mail	IN	A	10.0.1.1
