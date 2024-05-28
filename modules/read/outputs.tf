output "prefixed_files" {
  description = "List of file names prefixed with read-"
  value       = [for file in var.input_files : "read-${file}"]
}
 
