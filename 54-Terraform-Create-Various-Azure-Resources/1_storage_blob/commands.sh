# make sure terraform CLI is installed
terraform

# initialize terraform Azure modules
terraform init

# validate the template
terraform validate

# plan and save the infra changes into tfplan file
terraform plan -out tfplan

# apply the infra changes
terraform apply tfplan

# delete the infra
terraform destroy
