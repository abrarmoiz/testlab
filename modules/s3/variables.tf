variable "create_bucket" {
  description = "Controls if S3 bucket should be created"
  type        = bool
  default     = true
}

variable "bucket" {
  description = "Bucket for test lab"
  type        = string
  default     = null
}

variable "bucket_prefix" {
  description = "Bucket prefix for test lab"
  type        = string
  default     = null
}

variable "tags" {
   type        = map(string)
  default     = {}
}

variable "force_destroy" {
  type        = bool
  default     = false
}