######################################################################
#<
#
# Function:
#	p6_aws_clouddirectory_applied_schema_arns_list(directory_arn)
#
#  Args:
#	directory_arn - 
#
#>
######################################################################
p6_aws_clouddirectory_applied_schema_arns_list() {
    local directory_arn="$1"
    shift 1

    p6_run_read_cmd aws clouddirectory list-applied-schema-arns --directory-arn $directory_arn "$@"
}