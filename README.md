# terraform-demo

To specify individual variables on the command line, use the -var option when running the terraform plan and terraform apply commands:

terraform apply -var="image_id=ami-abc123"terraform apply -var='image_id_list=["ami-abc123","ami-def456"]' -var="instance_type=t2.micro"terraform apply -var='image_id_map={"us-east-1":"ami-abc123","us-east-2":"ami-def456"}'

The above examples show appropriate syntax for Unix-style shells, such as on Linux or macOS. For more information on shell quoting, including additional examples for Windows Command Prompt, see Input Variables on the Command Line.

You can use the -var option multiple times in a single command to set several different variables.



terraform apply -var="FLUX_GITHUB_REPO=github.com/DiosBond/go_bot" -var="GITHUB_OWNER=DiosBond" -var="GITHUB_TOKEN=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"

input terraform request varaibles
    algorithm - ECDSA
    ecdsa_curve - P256
