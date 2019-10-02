######################################################################
#<
#
# Function:
#	p6_aws_iam_service_linked_role_create(aws_service_name)
#
#  Args:
#	aws_service_name - 
#
#>
######################################################################
p6_aws_iam_service_linked_role_create() {
    local aws_service_name="$1"
    shift 1

    p6_run_write_cmd aws iam create-service-linked-role --aws-service-name $aws_service_name "$@"
}