FROM rust:1.75

WORKDIR /app

# Copy the contents of the hello-rust directory into the current directory of
# the Docker container
COPY . .

# Assuming you want to compile the Rust project here, you might run cargo build
RUN cargo build
RUN cargo test --no-run
#RUN true

# Then, we can run the unit test suite to test
CMD ["cargo", "test"]

