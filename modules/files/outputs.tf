output "file_names" {
  description = "The list of generated filenames"
  value       = [for f in local_file.example : f.filename]
}
 
