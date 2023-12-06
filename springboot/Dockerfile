FROM adoptopenjdk/maven-openjdk8:latest
WORKDIR /usr/src/library-management
COPY . .
RUN mvn -B -f pom.xml dependency:resolve
RUN mvn -B package -DskipTests
ENTRYPOINT ["java", "-jar", "/usr/src/library-management/target/springboot-0.0.1-SNAPSHOT.jar"]
EXPOSE 9090