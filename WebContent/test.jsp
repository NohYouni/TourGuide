<%@page import="java.util.Properties"%>
<%@page import="com.sun.mail.smtp.SMTPAddressFailedException"%>
<%@page import="javax.mail.Authenticator"%>
<%@page import="javax.mail.MessagingException"%>
<%@page import="javax.mail.internet.AddressException"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="javax.mail.Session"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

//final String user = "superm0527@gmail.com"; //발신자의 이메일 아이디를 입력 
//final String password = "rladkfla1!"; //발신자 이메일의 패스워드를 입력
final String user = "nasproject2233@gmail.com"; //발신자의 이메일 아이디를 입력 
final String password = "NtourAguideS1"; //발신자 이메일의 패스워드를 입력


Properties prop = new Properties();
prop.put("mail.smtp.host", "smtp.gmail.com");
prop.put("mail.smtp.port", 465);
prop.put("mail.smtp.auth", "true");
prop.put("mail.smtp.ssl.enable", "true");
prop.put("mail.smtp.ssl.trust", "smtp.gmail.com");

/*
Properties prop = new Properties();
prop.put("mail.transport.protocol", "smtp");
prop.put("mail.smtp.host", "smtp.gmail.com");
prop.put("mail.smtp.port", 465);
prop.put("mail.smtp.starttls.enable", "true");
prop.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
prop.put("mail.smtp.auth", "true");
*/

Session ses = Session.getInstance(prop, new javax.mail.Authenticator() {
    protected PasswordAuthentication getPasswordAuthentication() {
        return new PasswordAuthentication(user, password);
    }          
});

try {
    MimeMessage message = new MimeMessage(ses);
    message.setFrom(new InternetAddress(user));

    //수신자메일주소
    message.addRecipient(Message.RecipientType.TO, new InternetAddress("shdbs1221@naver.com")); 

    // Subject
    message.setSubject("ffffff"); //메일 제목을 입력

    // Text
    message.setText("dddddd");    //메일 내용을 입력

    // send the message
    Transport.send(message); ////전송
    System.out.println("message sent successfully...");
} catch (AddressException e) {
    e.printStackTrace();
} catch (MessagingException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
}


%>
</body>
</html>