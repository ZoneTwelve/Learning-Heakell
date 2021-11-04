# Learning some staff
S0metimes i will learning other Programming language、Tools、Other staff, so here ganna be the record about that.
So, what if you want to see it, please Open the branch list.
# Operating System
## Linux kernel
OK, because Linux Operating System's Couse require to do that, so it's my learning notes.
- OS: Ubuntu 21.04 / ( Linux version 5.11.0-38-generic (buildd@lcy01-amd64-016) (gcc (Ubuntu 10.3.0-1ubuntu1) 10.3.0, GNU ld (GNU Binutils for Ubuntu) 2.36.1) #42-Ubuntu SMP Fri Sep 24 14:03:54 UTC 2021 )
- OS Type: 64-bit
- CPU: Intel® Core™ i5-8250U CPU 

## Write a syscall

## Issues
1. make[1]: \*\*\* No rule to make target 'debian/canonical-certs.pem', needed by 'certs/x509_certificate_list'.  Stop.
2. make[1]: \*\*\* No rule to make target 'debian/canonical-revoked-certs.pem', needed by 'certs/x509_revocation_list'.  Stop.

### Problem-1
```
make[1]: \*\*\* No rule to make target 'debian/canonical-certs.pem', needed by 'certs/x509_certificate_list'.  Stop.
```

Solution: modify **.config** file, then remove the content of **CONFIG_SYSTEM_TRUSTED_KEYS**
before (Original): 

```
CONFIG_SYSTEM_TRUSTED_KEYS="debian/canonical-certs.pem"
```

after (final): 
```
CONFIG_SYSTEM_TRUSTED_KEYS=""
```

Like this
![After Before](resources/images/before-and-after.jpg)

# Problem-2
```
make[1]: \*\*\* No rule to make target 'debian/canonical-revoked-certs.pem', needed by 'certs/x509_revocation_list'.  Stop.
```



Disable those three flags

```
# CONFIG_TRUSTED_KEY=n
# CONFIG_SYSTEM_TRUSTED_KEYRING=n
# CONFIG_SYSTEM_TRUSTED_KEYS=""
# CONFIG_SYSTEM_REVOCATION_KEYS=""
```
Then whem run `sudo make` ganna getting this information,
just press **Enter** to continue
```
Enable access key retention support (KEYS) [Y/?] y
  Enable temporary caching of the last request_key() result (KEYS_REQUEST_CACHE) [Y/n/?] y
  Enable register of persistent per-UID keyrings (PERSISTENT_KEYRINGS) [Y/n/?] y
  TRUSTED KEYS (TRUSTED_KEYS) [N/m/y/?] (NEW)
```
