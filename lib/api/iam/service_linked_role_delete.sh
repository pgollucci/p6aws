######################################################################
#<
#
# Function:
#      = p6_aws_iam_service_linked_role_delete(role_name)
#
# Arg(s):
#    role_name - 
#
#
#>
######################################################################
p6_aws_iam_service_linked_role_delete() {
    local role_name="$1"
    shift 1

    p6_run_write_cmd aws iam delete-service-linked-role --role-name $role_name "$@"
}