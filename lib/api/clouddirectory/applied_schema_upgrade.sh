######################################################################
#<
#
# Function:
#      = p6_aws_clouddirectory_applied_schema_upgrade(published_schema_arn, directory_arn)
#
# Arg(s):
#    published_schema_arn - 
#    directory_arn - 
#
#
#>
######################################################################
p6_aws_clouddirectory_applied_schema_upgrade() {
    local published_schema_arn="$1"
    local directory_arn="$2"
    shift 2

    p6_run_write_cmd aws clouddirectory upgrade-applied-schema --published-schema-arn $published_schema_arn --directory-arn $directory_arn "$@"
}