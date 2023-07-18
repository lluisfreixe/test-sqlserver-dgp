FROM eclipse-temurin:8-jdk-focal
RUN echo "======================================================="
RUN echo " Entorn DGP "
RUN echo " URL de connexio a SQLServer "
RUN echo " spring.datasource.url = jdbc:sqlserver://10.46.249.36:1433;databaseName=test_backup"
RUN echo "======================================================="
ENV TZ=Europe/Madrid
ADD target/test-sqlserver-dgp-1.0.jar test-sqlserver-dgp-1.0.jar
ADD keystore.p12 keystore.p12
ENTRYPOINT ["java", "-jar", "test-sqlserver-dgp-1.0.jar"]

