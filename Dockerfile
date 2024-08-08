FROM sbute007/liferay
ENV LIFERAY_HOME=/opt/liferay
ENV CATALINA_HOME=$LIFERAY_HOME/tomcat
ENV PATH=$CATALINA_HOME/bin:$PATH
WORKDIR $LIFERAY_HOME
 
COPY /var/lib/jenkins/config/portal-ext.properties $LIFERAY_HOME/
 
EXPOSE 8080 11311
 
 
CMD ["/opt/liferay/tomcat/bin/catalina.sh", "run"]
