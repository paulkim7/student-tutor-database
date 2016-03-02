======================AIDS-STD README================================

In order to avoid having to download all of the required files to run Ruby on Rails, you can directly view and run our project through the virtual machine we have set up.

HOW TO ACCESS THE VM:
  ==Instructions are also included in the Onboarding artifact==
  1. Download the private key attached called Shabillion.pem
  
  2. For Windows: Open an ssh client such as MobaXterm or Putty. The download link for MobaXterm is http://mobaxterm.mobatek.net/download-home-edition.html and once it is downloaded, click on "Session" and then "SSH." Fill the fields out as follows:
  -Remote host: shabillion.com
  -Username: centos
  -Port: 22
  Then check "Use private key" and upload the key Shabillion.pem

  3. For Macs: Use the terminal to ssh into the VM. Use the following command:
  ssh -i ~/.ssh/id_rsa/Shabillion.pem centos@shabillion.com


HOW TO VIEW THE SITE:
  The project is being hosted on shabillion.com. Just type that into your broswer and it should automatically get the correct port number to show the site.


HOW TO RUN THE TESTS:
  -To run the unit tests, make sure you are in the aids-std directory. Then just simply run this command:
    bin/rake test
  This automatically runs all of the tests at once.



TECHNICAL SUPPORT:
  ==Information also included on the "Contact Us" page on the website==
  -Dante Knowles: (805) 452-2283
  - 
  -Or email aidshelp@shabillion.com


TROUBLESHOOTING:
  If accessing shabillion.com gives you an error like this: "This webpage is not available. ERR_CONNECTION_REFUSED", then it is because the server is not running currently. To fix that error, open a new terminal and ssh into the VM. Then cd into the aids-std directory and run this command:
      rails server --bind 172.31.44.128 -p3001



