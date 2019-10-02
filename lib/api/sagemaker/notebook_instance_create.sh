######################################################################
#<
#
# Function:
#	p6_aws_sagemaker_notebook_instance_create(notebook_instance_name, instance_type, role_arn)
#
#  Args:
#	notebook_instance_name - 
#	instance_type - 
#	role_arn - 
#
#>
######################################################################
p6_aws_sagemaker_notebook_instance_create() {
    local notebook_instance_name="$1"
    local instance_type="$2"
    local role_arn="$3"
    shift 3

    p6_run_write_cmd aws sagemaker create-notebook-instance --notebook-instance-name $notebook_instance_name --instance-type $instance_type --role-arn $role_arn "$@"
}