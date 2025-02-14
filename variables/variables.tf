variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f" # This is our devops-practice AMI ID
  description = "This is RHEL9 AMI ID"
}

variable "instance_type"{
    #default = "t3.micro"
}

variable "ec2_tags"{
    type = map
    default ={
        Project = "expense"
        componenet = "backend"
        Environment = "dev"
        Name = "expense-backend-dev"
    }
}

variable "from_port" {
  type        = number
  default     = 22
}

variable "to_port" {
    type = number
    default =22
}

variable "cidr_blocks" {
    type    = list(string)
    default =  ["0.0.0.0/0"]
}

variable "sg_tags" {
    type = map
    default = {
        Name = "expense-backend-dev"
    }
}
/*
# 1. command line --> -var "<var-name>=<var-value>"
# 2. tfvars
# 3. Environment variable
# 4. default value
# 5. user prompt */
