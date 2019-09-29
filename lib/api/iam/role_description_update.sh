######################################################################
#<
#
# Function:
#      = p6_aws_iam_role_description_update(role_name, description)
#
# Arg(s):
#    role_name - 
#    description - 
#
#
#>
######################################################################
p6_aws_iam_role_description_update() {
    local role_name="$1"
    local description="$2"
    shift 2

    p6_run_write_cmd aws iam update-role-description --role-name $role_name --description $description "$@"
}