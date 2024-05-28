variable "file_contents" {
  description = "Contents of the files to create"
  type        = map(string)
}

variable "file_prefix" {
  description = "Prefix for the filenames"
  type        = string
}

variable "number_of_files" {
  description = "Number of files to create"
  type        = number
}
 
