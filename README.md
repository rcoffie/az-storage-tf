# <ins>Azure Storage </ins>

![storage](pics/diagram-export-10-30-2024-2_58_39-PM.png)

A simple project with deploying azure storage wth Terraform

## <ins> Azure Storgae Overview </ins>

Azure Storage is a comprehensive cloud storage solution provided by Microsoft Azure, designed to handle a variety of data types with high durability, scalability, and security. It supports multiple storage services to meet diverse application needs:

* Blob Storage: Ideal for storing large amounts of unstructured data such as images, videos, and backups. It offers different tiers for optimizing costs based on access frequency.

* File Storage: A managed file share accessible via the SMB protocol, suitable for applications requiring shared access across multiple machines.

* Queue Storage: Facilitates reliable messaging between application components, allowing asynchronous communication through a simple queuing mechanism.

* Table Storage: A NoSQL key-value store that provides a flexible schema for structured data, perfect for applications with dynamic data needs.

* Disk Storage: Offers managed disks for Azure Virtual Machines, ensuring high performance and reliability for workloads.
  
To deploy these Azure Storage services efficiently, this project utilizes Terraform, an open-source infrastructure as code tool. Terraform allows you to define and provision your cloud infrastructure through a declarative configuration language. With Terraform, you can:

* Easily manage Azure resources by writing simple, reusable code.
* Automate the deployment process, ensuring consistent environments.
* Version control your infrastructure, allowing for collaboration and rollback capabilities.

By combining Azure Storage with Terraform, you can streamline your deployment processes, maintain infrastructure consistency, and scale your applications effectively.

## <ins> Usage </ins>

### 1. Clone the Repository

`` git clone https://github.com/rcoffie/az-storage-tf.git ``

### 2. Navigate to the Project Directory

`` cd az-storage-tf ``

### 3. Authenticate and log in to azure account via the Azure Command-Line Interface(CLI)

`` az login ``

### 4. Set up Terraform enviroment

`` terraform init ``

### 5. Create an execuion plan

`` terraform plan ``

### 6. Executing the changes defined

`` terraform apply --auto-approve ``
