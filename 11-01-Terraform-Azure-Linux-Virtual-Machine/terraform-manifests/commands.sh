# Create Folder
cd terraform-manifests/
mkdir ssh-keys

# Create SSH Key
cd ssh-ekys
ssh-keygen \
    -m PEM \
    -t rsa \
    -b 4096 \
    -C "azureuser@myserver" \
    -f terraform-azure.pem
# Important Note: If you give passphrase during generation, during everytime you login to VM, you also need to provide passphrase.

# List Files
ls -lrt ssh-keys/

# Files Generated after above command
## Public Key: terraform-azure.pem.pub -> Rename as terraform-azure.pub
mv ssh-keys/terraform-azure.pem.pub ssh-keys/terraform-azure.pub

## Private Key: terraform-azure.pem

# Permissions for Pem file
chmod 400 ssh-keys/terraform-azure.pem

# get terraform version
terraform version
# Terraform v0.13.5

# get terraform commands
terraform

# init terraform's Azure provider (main.tf)
terraform init

# display the terraform template
cat main.tf

# plan and preview terraform changes
terraform plan

# deploy terraform infra
terraform apply

# Connect to VM and Verify
ssh -i ssh-keys/terraform-azure.pem azureuser@<PUBLIC-IP>

# Access Application
curl http://localhost
curl http://localhost/app1
curl http://localhost/app1/metadata.html
exit

# destroy infra
terraform destroy
