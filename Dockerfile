# Sử dụng Tomcat 9 và JDK 17 
FROM tomcat:9.0-jdk17 
# Copy file WAR của mày vào thư mục webapps trong Tomcat 
COPY target/BTEmail.war /usr/local/tomcat/webapps/ROOT.war 
# Expose port 8080 
EXPOSE 8080 
# Chạy Tomcat 
CMD ["catalina.sh", "run"]
