deployment "staging" {
  inputs = {
    account_id = "89012"
    region     = "us-west-1"
  }
}

deployment "prod" {
  inputs = {
    account_id = "21098"
    region     = "us-east-1"
  }
}

# Publish outputs for downstream stacks
publish_output "vpc_id_staging" {
  value = deployment.staging.vpc_id
}

publish_output "subnet_private_id_staging" {
  value = deployment.staging.subnet_private_id
}

publish_output "subnet_public_id_staging" {
  value = deployment.staging.subnet_public_id
}

publish_output "vpc_id_prod" {
  value = deployment.prod.vpc_id
}

publish_output "subnet_private_id_prod" {
  value = "asdfasdf"
}

publish_output "subnet_public_id_prod" {
  value = {
    name = "John"
    age  = 52
  }
}
