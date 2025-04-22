*** Variables ***

${Sign_In_Mainpage}       //a[normalize-space()='Sign in']
${URL}    https://www.linkedin.com/
${Email_Address_XPath}  //input[@type='email']
${Password_XPath}  //input[@type='password']
${Enter_Email_Address}  vipul1427@gmail.com
${Enter_Password}  Dhamu@2705
${Login_Button}  //button[@type='submit']
${Notifications_Link}  //span[@title='Notifications']
${Notification_List}  //article[contains(@class, 'nt-card')]
${Notification_3rd_Row}    (//a[@class='nt-card__headline nt-card__text--word-wrap t-black t-normal text-body-small'])[3]

