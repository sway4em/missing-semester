```
cd /tmp
mkdir missing
cd missing
touch semester
echo '#!/bin/sh' > semester
echo 'curl --head --silent https://missing.csail.mit.edu' >> semester
chmod +x semester
./semester | head -n4 | tail -n1 > last-modified.txt
```
