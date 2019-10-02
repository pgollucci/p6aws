######################################################################
#<
#
# Function:
#	p6_aws_dynamodb_backups_list()
#
#>
######################################################################
p6_aws_dynamodb_backups_list() {

    p6_run_read_cmd aws dynamodb list-backups "$@"
}