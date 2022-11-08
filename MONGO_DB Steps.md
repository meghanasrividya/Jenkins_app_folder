## Steps to do in app virtual machine
- Go into the app virtual machine `vagrant ssh app`
- Go to the folder where app.js is located `cd app ` ,` cd app`,`cd app` 
- install the app `npm install`

 ![image](https://user-images.githubusercontent.com/97250268/197030870-13839e68-03bd-4142-bdfc-de3b0b85a5e6.png)
 
 ## Steps to do in db virtual machine
 - Go into db virtual machine `vagrant ssh db`
 - Then give the following commands
 - `sudo systemctl status mongodb`
 - `sudo systemctl restart mongodb`
 - `sudo systemctl enable mongodb`
 - `sudo systemctl status mongodb`
 
![image](https://user-images.githubusercontent.com/97250268/197031748-af98dc29-f278-4006-9229-c00b70a3ac91.png)

- Go inside /etc folder `cd /etc`
- Go the file `sudo nano mongod.conf`

![image](https://user-images.githubusercontent.com/97250268/197033226-e1b2a9e6-0143-49cc-a324-640de5cce4b0.png)

- Change the port:27017,bindIP: 0.0.0.0
- Then give the follwing commands again
- `sudo systemctl restart mongod`
-  `sudo systemctl enable mongod`
-  `sudo systemctl status mongod`

### Now come back to app virtual machine
- Create the environment variable
 `export DB_HOST=mongodb://192.168.10.150:27017/posts`
- ![image](https://user-images.githubusercontent.com/97250268/197034333-1348abba-3036-4240-8c5c-fac041e89800.png)
- `printenv DB_HOST`
- `npm start`

 ![image](https://user-images.githubusercontent.com/97250268/197034685-ce4e4a83-f15e-4fd6-949b-60dec293f3ec.png)

### Now the app is running in `app virtual machine` and can communicate with ` db virtual machine`

![image](https://user-images.githubusercontent.com/97250268/197035216-9d8da23f-c993-4cc0-9051-04b768c22b28.png)

![image](https://user-images.githubusercontent.com/97250268/197035367-4c10cbad-f653-4e9c-830a-4ce32a31f21f.png)







