######################################################################
#<
#
# Function:
#      = p6_aws_sagemaker_presigned_notebook_instance_url_create(notebook_instance_name)
#
# Arg(s):
#    notebook_instance_name - 
#
#
#>
######################################################################
p6_aws_sagemaker_presigned_notebook_instance_url_create() {
    local notebook_instance_name="$1"
    shift 1

    p6_run_write_cmd aws sagemaker create-presigned-notebook-instance-url --notebook-instance-name $notebook_instance_name "$@"
}