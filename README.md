# ghost-nginx-ssl-with-docker-compose

> 中文版使用说明在[这里](https://huntersnk.com/20170122/)


### A. Prepare

   1. A 64bit ubuntu server(14.04/16.04/16.10)
   2. Basic configuare about Security
   3. Your own Domain
   4. SSL Certificates
   5. Set up domain to point to your own server
   6. Install docker-engine and docker-compose [check here](https://docs.docker.com/engine/installation/linux/ubuntu/)
   
### B. Configure
1. Log in your server through SSH
2. git clone https://github.com/huntersnk/ghost-nginx-ssl-with-docker-compose
3. copy your SSL Certificates to ghost-nginx-ssl-with-docker-compose/ssl/ folder
4. edit nginx.conf,change all behind 'server_name' and return301 domian to your own domain,and change all yourfile1.crt and yourfile2.key    to your own SSL Certificates file name.
5. edit config.js,change production's url to your own domain name.

### C. Usage

`$ docker-compose up -d`

`$ docker ps `

`$ cp config.js ghost-content/`

`$ docker restart ghost1`

Visit yourdomain.com to check it
and yourdomain.com/admin to configure Ghost.

Enjoy!

MIT License

Copyright (c) [2017] [huntersnk]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
