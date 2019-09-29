######################################################################
#<
#
# Function:
#      = p6_aws_mediastore_containers_list()
#
#
#
#>
######################################################################
p6_aws_mediastore_containers_list() {

    p6_run_read_cmd aws mediastore list-containers "$@"
}