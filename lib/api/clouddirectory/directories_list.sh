######################################################################
#<
#
# Function:
#	p6_aws_clouddirectory_directories_list()
#
#>
######################################################################
p6_aws_clouddirectory_directories_list() {

    p6_run_read_cmd aws clouddirectory list-directories "$@"
}