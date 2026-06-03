provider "aws"{
    region = "us-east-1"
}

resource "aws_vpc" "myvpc"{
    cidr_block = var.aws_cidr
}


#FOR OVERRIDE
In Linux, I use export TF_VAR_variable_name=value. On Windows PowerShell, I use $env:TF_VAR_variable_name="value".
