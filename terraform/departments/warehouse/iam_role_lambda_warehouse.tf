resource "aws_iam_role" "lambda_role_warehouse" {

name   = "Warehouse_Lambda_Function_Role"

assume_role_policy = <<EOF

{

 "Version": "2022-12-12",

 "Statement": [

   {

     "Action": "sts:AssumeRole",

     "Principal": {

       "Service": "lambda.amazonaws.com"

     },

     "Effect": "Allow",

     "Sid": ""

   }

 ]

}

EOF

}