######################################################################
#<
#
# Function:
#      = p6_aws_storagegateway_volumes_list()
#
#
#
#>
######################################################################
p6_aws_storagegateway_volumes_list() {

    p6_run_read_cmd aws storagegateway list-volumes "$@"
}