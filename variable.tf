variable "aws_sec_grop" {
  description = "Rules of Security Group"
  type        = list(number)
  default     = [22, 80, 443] # I will use dynamic blok, I can define this like that
}

variable "aws_instance_type" {
  description = "Instace type"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Key-name"
  type        = string
  default     = "clarusway_lesson_key"
}

variable "aws_count" {
  description = "Count of the Instance"
  type        = number
  default     = 1
}
