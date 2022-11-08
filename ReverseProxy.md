**Reverse Proxy With Nginx**
-  Go to the virtual machine open the file using command `sudo nano /etc/nginx/sites-available/default`
-  copy the below content to the file

![image](https://user-images.githubusercontent.com/97250268/196742954-58defc39-21c6-4ebf-b317-c2d89553fbd4.png)

- change the local host to 3000 
- save the file
- To check the syntax is correct give the command`sudo nginx -t`
- Go to the location where your app.js is there
- `npm install`
- `npm start`
-  App is now running on the browser without giving the port manually

![image](https://user-images.githubusercontent.com/97250268/196743998-e4382313-8d38-433b-b186-c4d1ca166f8f.png)
