variable "instance_name" {
    type = string  
}

variable "machine_type" {
    type = string
    default = "n1-standard-1"
}

variable "location" {
    type = string
    default = "US-CENTRAL1"  
}

variable "image" {
    type = string
    default = "centos-stream-8-v20231115"
  
}