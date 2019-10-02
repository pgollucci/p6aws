######################################################################
#<
#
# Function:
#	p6_aws_clouddirectory_schema_apply(published_schema_arn, directory_arn)
#
#  Args:
#	published_schema_arn - 
#	directory_arn - 
#
#>
######################################################################
p6_aws_clouddirectory_schema_apply() {
    local published_schema_arn="$1"
    local directory_arn="$2"
    shift 2

    p6_run_write_cmd aws clouddirectory apply-schema --published-schema-arn $published_schema_arn --directory-arn $directory_arn "$@"
}