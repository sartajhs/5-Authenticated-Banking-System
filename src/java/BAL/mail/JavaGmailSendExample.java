package BAL.mail;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

public class JavaGmailSendExample {

    public static String ip = "", UserID = "", time = "";

    public static void main(String args[]) {
        ip = args[0];
        UserID = args[1];
        time = args[2];

        final String username = "softdata08@gmail.com";
        final String password = "soft1234";

        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");

        Session session = Session.getInstance(props,
                new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(username, password);
                    }
                });
        try {

            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress("softdata08@gmial.com"));
            message.setRecipients(Message.RecipientType.TO,
                    InternetAddress.parse("sysdata63@gmail.com"));
            message.setSubject("Alert");
            message.setText("To Admin ,"
                    + "This is Notification to ADMIN Account \"" + UserID + "\" Try To Access From " + ip + ". On " + time);

            Transport.send(message);

            System.out.println("Mail sent succesfully!");

        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
    }

}
