######################################################################
#<
#
# Function:
#      = p6_aws_storagegateway_file_shares_list()
#
#
#
#>
######################################################################
p6_aws_storagegateway_file_shares_list() {

    p6_run_read_cmd aws storagegateway list-file-shares "$@"
}