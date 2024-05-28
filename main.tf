module "files" {
  source           = "./modules/files"
  file_contents    = { for i in range(5) : i => "Content for file ${i}" }
  file_prefix      = "example_file"
  number_of_files  = 5
}

output "generated_files" {
  value = module.files.file_names
}
 
