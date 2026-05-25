# Día 1 de Terraform

## Tarea 1: Libro - Terraform: Up & Running by Yevgeniy Brikman — Chapter 1

Lee el capítulo 1 del libro mencionado anteriormente. Lee con intención enfocandote en qué es terraform y para que se utiliza.

## Tarea 2: Configura tu ambiente.

1. Set Up Your AWS Account — skip if you already have an account, but watch it anyway for the IAM and billing setup tips.
2. Install and Configure the AWS CLI
3. Install Terraform and Connect Terraform to AWS

terraform version
aws --version
aws sts get-caller-identity
aws configure list

- **CUENTA DE AWS** - Primero debes configurar tu cuenta de AWS. El free tier es suficiente.

![AWS Account](./img/1_awsaccount.png)

- **TERRAFORM** - Instala la última versión de terraform localmente en tu computador.

![Version de Terraform](./img/2_terraformversion.png)

- **AWS CLI** - Configura tus credenciales en AWS CLI de forma local.

![Profile en AWS CONFIG](./img/3_user.png)

- **VISUAL STUDIO CODE** - Instala VS Code y añade la extensión de Hashicorp Terraform.

## Tarea 3: MI BLOG

**¿QUÉ ES LA INFRAESTRUCTURA COMO CÓDIGO? ¿CÓMO ESTÁ TRANSFORMANDO DEVOPS?**

**What IaC is and the problem it solves**
La IaC es infraestructura con código, elimina configuraciones manuales y errores, logrando entornos reproducibles.

**Declarative vs Imperative**
Declarative define el estado final; Terraform decide cómo lograrlo. Imperative indica paso a paso cómo crear recursos.

**Why Terraform is worth learning**
Terraform permite automatizar infraestructura multi-cloud de forma consistente, escalable y versionada.

**Personal goals (30-day challenge)**
Dominar Terraform, crear módulos reutilizables y aplicar buenas prácticas para diseñar infraestructura profesional
