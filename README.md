# CodeLitHub Bookstore

CodeLitHub Bookstore is a comprehensive system providing a suite of services to manage book inventory, sales, and customer interactions. It utilizes gRPC for efficient communication and Redis for high-performance data storage and retrieval.

## Prerequisites

Ensure you have Docker and Docker Compose installed on your system for running the services.

## Getting Started

1. Clone the CodeLitHub Bookstore repository:
   ```bash
   git clone [URL of the CodeLitHub Bookstore repository]
   ```

2. Change directory to the cloned repository:
   ```bash
   cd [directory of the cloned repository]
   ```

## Building and Running with Docker Compose

Docker Compose is used to orchestrate the bookstore application along with its dependencies, such as Redis.

1. Build and start the services with the following command:
   ```bash
   docker compose up -d
   ```

2. To stop the services and remove the containers, execute:
   ```bash
   docker compose down
   ```

### Configuration

Configure the environment variables in the `docker-compose.yml` file as follows:

- `JWT_SECRET_TOKEN`: A secret key for JWT authentication. Set a strong, unique value in production.
- `REDIS_HOST`: The hostname or IP address of the Redis server.
- `REDIS_PASSWORD`: The password for accessing Redis. Ensure this is secure in production.
- `REDIS_DB`: The Redis database number. Defaults to `0`.

## Services

The CodeLitHub Bookstore system consists of the following services:

- **Authentication Service (`clh-auth`)**: Manages user authentication and token generation.
- **PostgreSQL (`postgres`)**: Stores relational data such as book details and customer information.
- **Redis (`redis`)**: Caches frequently accessed data for quick retrieval.
- **Gateway (`clh-gateway`)**: Serves as the entry point for the application, routing requests to appropriate services.

## Contributing

Contributions are welcome. To contribute:

1. Fork the repository.
2. Create a feature branch: `git checkout -b feature-branch-name`.
3. Commit your changes: `git commit -m 'Add some feature'`.
4. Push to the branch: `git push origin feature-branch-name`.
5. Submit a pull request.

For more information, see [creating a pull request on GitHub](https://help.github.com/articles/creating-a-pull-request/).

## License

This project is licensed under the GNU General Public License v3.0. See the [LICENSE](LICENSE) file for details.
