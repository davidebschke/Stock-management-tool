module "hr_department" {
    source = "terraform/main.tf"
    providers = {
        aws = aws.west2 
        }
}