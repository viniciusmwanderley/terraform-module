# terraform-module

Esse modulo :
* Cria instância

## Dependências

Para usar o make você precisa:

 - [terraform](https://www.terraform.io/) >= 0.14.0
 - [make](https://www.gnu.org/software/make/)

## Usando

Crie um arquivo **terrafile.tf** na raiz do seu projeto, você pode seguir esse exemplo:

```terraform
provider "aws" {
  region  = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "wanderley-tfstates-terraform"
    key    = "terraform-test.tfstate"
    region = "us-east-1"
  }
}

module "product" {

  source                  = "git::https://github.com/viniciusmwanderley/terraform-module.git"
  name                    = "product"
}

output "ip_address" {
  value = module.product.ip_address
}
```

Crie seu arquivo **.env** a partir do exemplo **.env.example**


## Inputs

| **Nome** | **Descrição** | **Tipo** | **Default** | **Requerido** |
|------|-------------|:----:|:-----:|:-----:|
| **name** |  Nome do projeto | string | n/a | sim |
| **enable_sg** |  Habilitar feature de criar security group | bool | false | não |
| **ingress_ports** |  Lista de portas para liberar | list(number) | [] | não |


# ToDo

- [ ] Colocar suporte a security group
- [ ] Colocar suporte a autoscaling
