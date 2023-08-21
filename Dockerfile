FROM ruby:3.2.0

RUN apt-get update && apt-get install nodejs -y

WORKDIR /app

COPY . .
COPY config/database.yml.ci config/database.yml

RUN gem install bundler
RUN bundle install --jobs "$(nproc)"

EXPOSE 3000

ENTRYPOINT ["bundle", "exec"]

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
