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

resource "local_file" "example" {
  count    = var.number_of_files
  filename = "${path.module}/${var.file_prefix}_${count.index}.txt"
  content  = lookup(var.file_contents, count.index, "default content")
}

output "file_names" {
  value = [for f in local_file.example : f.filename]
}
 
