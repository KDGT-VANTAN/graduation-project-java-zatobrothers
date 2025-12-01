FROM eclipse-temurin:17-jdk-jammy

WORKDIR /app

# Maven インストール
RUN apt-get update \
    && apt-get install -y maven \
    && rm -rf /var/lib/apt/lists/*

COPY pom.xml .
RUN mvn -B dependency:go-offline

CMD ["mvn", "spring-boot:run"]
