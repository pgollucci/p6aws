######################################################################
#<
#
# Function:
#      = p6_aws_clouddirectory_published_schema_arns_list()
#
#
#
#>
######################################################################
p6_aws_clouddirectory_published_schema_arns_list() {

    p6_run_read_cmd aws clouddirectory list-published-schema-arns "$@"
}