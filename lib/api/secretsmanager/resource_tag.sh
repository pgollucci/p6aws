######################################################################
#<
#
# Function:
#	p6_aws_secretsmanager_resource_tag(secret_id, tags)
#
#  Args:
#	secret_id - 
#	tags - 
#
#>
######################################################################
p6_aws_secretsmanager_resource_tag() {
    local secret_id="$1"
    local tags="$2"
    shift 2

    p6_run_write_cmd aws secretsmanager tag-resource --secret-id $secret_id --tags $tags "$@"
}