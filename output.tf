output "File-Creation" {
value = local_file.filename.id
}

output "content" {
value = local_file.filename.content
}

output "message" {
value = "Terraform and Jenkins Integrated"
}
