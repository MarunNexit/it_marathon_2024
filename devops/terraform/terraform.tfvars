```hcl
   location                        = "North Europe"
   project_name                    = "itmarathon"
   environment                     = "prod"
   vnet_address_space              = ["10.0.0.0/16"]
   public_subnet_address_prefix    = "10.0.4.0/24"
   private_subnet_address_prefix   = "10.0.5.0/24"
   bastion_subnet_address_prefix   = "10.0.6.0/24"
   monitoring_subnet_address_prefix = "10.0.7.0/24"
   mysql_subnet_address_prefix     = "10.0.3.0/24"
   data_location                   = "Europe"

   allowed_ip_ranges = [
     "88.135.216.175/32",  # Replace with your IP ranges
   ]

   vm_config = {
     size           = "Standard_B1s"
     admin_username = "azureuser"
   }

   admin_ssh_keys = [
     "ssh-rsa EHA7/lGd/yYbzUM7+0Pw8bcCxYj5VFjPfZqZgD63uzI",  # Replace with your public SSH key
   ]

   mysql_config = {
     admin_username = "mysqladmin"
     admin_password = "SecurePassword123!"
     sku_name       = "B_Standard_B1s"
     version        = "8.0.21"
   }

   storage_config = {
     account_tier             = "Standard"
     account_replication_type = "LRS"
     container_name           = "itmarathoncontainer"
   }

   grafana_password = "SecureGrafanaPassword123!"
   grafana_user     = "admin"

   azure_subscription_id = "your-subscription-id"
   azure_tenant_id       = "your-tenant-id"
   azure_client_id       = "your-client-id"
   azure_client_secret   = "your-client-secret"

   infinity_client_id     = "your-infinity-client-id"
   infinity_client_secret = "your-infinity-client-secret"

   mysql_retention_days = "7"

   enable_http2 = true

   ssl_certificate_password = "SecureCertPassword123!"
   ```