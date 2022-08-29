# terrafrom-azure-resources
To create azure resources using terrafrom vars

terrafrom init
terraform.exe plan -var-file="dev.tfvars"
terraform.exe apply -var-file="dev.tfvars"