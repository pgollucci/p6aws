######################################################################
#<
#
# Function:
#      = p6_aws_mediastore_data_items_list()
#
#
#
#>
######################################################################
p6_aws_mediastore_data_items_list() {

    p6_run_read_cmd aws mediastore-data list-items "$@"
}