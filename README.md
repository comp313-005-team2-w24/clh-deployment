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

## Services

The CodeLitHub system consists of the following services:

- **Bookstore (`clh-bookstore`)**: The main application that provides book management functionality. It's accessible on ports `8082` and `8079` for application and monitoring purposes, respectively.
- **Authentication Service (`clh-auth`)**: Manages user authentication and token generation, operating on port `8080`.
- **Gateway (`clh-gateway`)**: Acts as the entry point for the application, routing requests to the appropriate services. It's available on port `8081`.
- **PostgreSQL (`postgres`)**: Stores relational data such as book details and customer information. It's exposed on port `5432`.
- **Redis (`redis`)**: Caches frequently accessed data for quick retrieval. The service listens on port `6379`.
- **VictoriaMetrics (`victoriametrics`)**: A time-series database used for storing and querying metrics, accessible on port `8428`.
- **Grafana (`grafana`)**: Provides visualization and analytics of metrics collected by VictoriaMetrics. It can be accessed via port `3000`. The service is pre-configured to include dashboards for monitoring the application and database.

# Grafana Dashboard Guide

This repository includes a Grafana setup that visualizes metrics from PostgreSQL and a custom application named "bookstore". Grafana allows you to monitor, analyze, and visualize metrics in a user-friendly way.

## Datasources

- **PostgreSQL**: Configured as a datasource to fetch and display data from your PostgreSQL database. It provides insights into the database's performance, statistics, and more.
- **Bookstore**: Custom application metrics, including JVM metrics, to monitor the performance and health of the Bookstore application.

## Available Dashboards

Two main dashboards are provided out of the box to help you get started with monitoring your environment:

1. **Database Statistics**
   - **URL**: [Database Statistics Dashboard](http://localhost:3000/d/e9b8f761-baaa-4b72-93e2-252b5a5b1f5f/)
   - This dashboard provides a comprehensive overview of your PostgreSQL database's performance, including query execution times, number of active connections, and more. It's an essential tool for database administrators and developers looking to optimize database performance.

2. **Bookstore JVM Metrics**
   - **URL**: [Bookstore JVM Metrics Dashboard](http://localhost:3000/d/c3fd612e-ad82-4644-a159-9f7004257709/)
   - Focused on monitoring the Java Virtual Machine (JVM) metrics of the Bookstore application, this dashboard displays key performance indicators such as heap usage, garbage collection times, and thread counts. It's crucial for ensuring the smooth operation and reliability of the Bookstore application.

## Getting Started

To start using these dashboards, ensure you have Grafana and the necessary datasources configured correctly. Follow these steps:

1. **Launch Grafana**: Make sure Grafana is running and accessible. By default, you can access the Grafana UI at [http://localhost:3000](http://localhost:3000).

2. **Configure Datasources**: Navigate to the "Configuration" > "Data Sources" section in the Grafana UI and verify that the PostgreSQL and Bookstore datasources are correctly set up.

3. **Access Dashboards**: Use the links provided above to access the pre-configured dashboards. You might need to adjust the datasource selection in the dashboard settings if your datasource names differ.

## Customization

Feel free to customize the dashboards according to your needs. Grafana offers a wide range of visualization options and settings that you can tweak to better reflect your monitoring requirements.

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
