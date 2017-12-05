FROM norionomura/swiftlint:latest

# Install Ruby and Danger
RUN apt-get update && apt-get install -y ruby
RUN gem install bundler danger danger-swiftlint
RUN danger --version

CMD ["swiftlint", "lint"]
