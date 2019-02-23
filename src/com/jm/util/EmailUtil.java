package com.jm.util;

import java.util.Properties;


import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.jm.model.Student;

public class EmailUtil {

	Properties emailProperties;
	Session mailSession;
	MimeMessage emailMessage;


	public EmailUtil() throws AddressException, MessagingException {
		super();
		
		/*JavaEmail javaEmail = new JavaEmail();
		
		javaEmail.setMailServerProperties();
		javaEmail.createEmailMessage();
		javaEmail.sendEmail();*/
	}

	public void sendEmail(Student student) throws AddressException, MessagingException {
		
		String emailPort = "587";

		emailProperties = System.getProperties();
		emailProperties.put("mail.smtp.port", emailPort);
		emailProperties.put("mail.smtp.auth", "true");
		emailProperties.put("mail.smtp.starttls.enable", "true");


		String newline = "<br/>";
		
		
		String[] toEmails = {student.getEmailId(),"jmpvttutorials@gmail.com" };
		String emailSubject = "Student Registration Successfull"+"Student ID : "+student.getStudentID();
		String emailBody = "Hi,"+newline
				+ "Student with Name :" +student.getStudentName()+ " and Student ID : "+student.getStudentID()+" Succesfully Registered"+newline
				+ ""+newline
				+ ""+newline
				+"Call 9930851959 For Further Queries"
				+ ""+newline
				+ ""+newline
				+"Our Admin will contact u shortly."
				+ ""+newline
				+ ""+newline
				+ ""+newline
				+ ""+newline
				+"Regards,"+newline
				+"JM Tutorials"
				;

		mailSession = Session.getDefaultInstance(emailProperties, null);
		emailMessage = new MimeMessage(mailSession);

		for (int i = 0; i < toEmails.length; i++) {
			emailMessage.addRecipient(Message.RecipientType.TO, new InternetAddress(toEmails[i]));
		}

		
		emailMessage.setSubject(emailSubject);
		emailMessage.setContent(emailBody, "text/html");//for a html email
		//emailMessage.setText(emailBody);// for a text email


		String emailHost = "smtp.gmail.com";
		String fromUser = "jmpvttutorials@gmail.com";//just the id alone without @gmail.com
		String fromUserEmailPassword = "SimJol14";

		Transport transport = mailSession.getTransport("smtp");

		transport.connect(emailHost, fromUser, fromUserEmailPassword);
		transport.sendMessage(emailMessage, emailMessage.getAllRecipients());
		transport.close();
		System.out.println("Email sent successfully.");
	}
}
