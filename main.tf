module "files" {
  source           = "./modules/files"
  file_contents    = { for i in range(5) : i => "Content for file ${i}" }
  file_prefix      = "example_file"
  number_of_files  = 5
}

module "read" {
  source      = "./modules/read"
  input_files = module.files.file_names
}

module "write" {
  source   = "./modules/write"
  answer_1 = var.answer_1
  answer_2 = var.answer_2
  answer_3 = var.answer_3
  answer_4 = var.answer_4
  answer_5 = var.answer_5
  answer_6 = var.answer_6
  answer_7 = var.answer_7
}

output "generated_files" {
  value = module.files.file_names
}

output "read_files" {
  value = module.read.prefixed_files
}

output "write_answers" {
  value = {
    answer_1 = module.write.answer_1
    answer_2 = module.write.answer_2
    answer_3 = module.write.answer_3
    answer_4 = module.write.answer_4
    answer_5 = module.write.answer_5
    answer_6 = module.write.answer_6
    answer_7 = module.write.answer_7
  }
}
