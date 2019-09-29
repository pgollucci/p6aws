######################################################################
#<
#
# Function:
#      = p6_aws_storagegateway_tapes_list()
#
#
#
#>
######################################################################
p6_aws_storagegateway_tapes_list() {

    p6_run_read_cmd aws storagegateway list-tapes "$@"
}