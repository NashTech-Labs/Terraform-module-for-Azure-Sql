variable "resource_group_name" {
  type        = string
  description = "RG name in Azure"
}


variable "server_name" {
  type        = string
  description = "SQL Server name in Azure"
}
variable "mssql_version"{
   type        =  string
   description = "Version of Sql server in Azure" 
}

variable "login" {
  type        = string
  description = "Administrator login name for Server"
}


variable "password" {
  type        = string
  description = "Administrator login password for Server"
}
